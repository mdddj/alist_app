import 'package:dd_js_util/dd_js_util.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/collect_model.dart';
import '../tool/part.dart';
import 'collect_folder_provider.dart';

part 'collect_list_show.g.dart';

@Riverpod(keepAlive: true)
class CollectListShowStore extends _$CollectListShowStore {
  @override
  Future<IList<CollectModel>> build() async {
    final stream = IsarTool.instance.isar.collectModels.watchLazy().listen((event) {
      ref.invalidateSelf();
    });
    ref.onDispose(stream.cancel);
    final folderId = ref.watch(collectFolderStoreProvider.select((value) => value.value?.find((element) => element.isSelect)?.id));
    if (folderId != null) {
      return IsarTool.instance.collectDao.findListByFolderId(folderId);
    }
    return const IListConst([]);
  }
}
