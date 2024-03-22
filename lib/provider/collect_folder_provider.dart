import 'package:dd_js_util/dd_js_util.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/collect_folder.dart';
import 'app_manager.dart';

part 'collect_folder_provider.g.dart';

extension CollectFolderStoreEx on WidgetRef {
  IList<CollectFolder> get collectFolders =>
      watch(collectFolderStoreProvider.select((value) => value.value)) ??
      const IListConst([]);
}

///收藏状态管理类
@Riverpod(keepAlive: true)
class CollectFolderStore extends _$CollectFolderStore {
  @override
  Future<IList<CollectFolder>> build() async {
    final domain = ref.activeDomain;
    if (domain?.id case final Id siteId) {
      var folders = await CollectFolder.dao.getFoldersBySiteId(siteId);
      if (folders.isEmpty) {
        final defaultFolder = await CollectFolder.makeDefaultFolder(ref);
        if (defaultFolder != null) {
          folders = folders.add(defaultFolder);
        }
      }
      if (!folders.any((element) => element.isSelect)) {
        folders = folders.updateFirst((old) => old.copyWith(isSelect: true));
      }
      return folders;
    }
    return const IListConst([]);
  }

  void changeItemProperties(
      CollectFolder item, ValueCopyWith<CollectFolder> onChange) {
    if (state.value case IList<CollectFolder> list) {
      state = AsyncData(list.updateItemFirstWhere(
          (element) => element.id == item.id, onChange));
    }
  }

  void setNewList(IList<CollectFolder> list) {
    state = AsyncData(list);
  }

  void addANewItem(CollectFolder folder) {
    if (state.value case IList<CollectFolder> list) {
      state = AsyncData(list.add(folder));
    }
  }

  void removeById(int id){
    if (state.value case IList<CollectFolder> list) {
      state = AsyncData(list.removeWhere((element) => element.id == id));
    }
  }
}
