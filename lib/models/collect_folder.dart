import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

import '../exception/global.dart';
import '../provider/app_manager.dart';
import '../tool/part.dart';

part 'collect_folder.g.dart';

CollectFolder _makeNew(Ref ref, String name,
    {String? note, bool isDefault = false, bool canDelete = true}) {
  if (ref.activeDomain?.id case Id id) {
    return CollectFolder(
        folderName: name,
        siteId: id,
        notes: note ?? '',
        isDefault: isDefault,
        canDelete: canDelete);
  }
  throw GlobalError.biz('创建收藏夹失败.');
}

extension CollectFolderExByRef on Ref {
  Future<CollectFolder?> putANewCollectFolder(String name,
      {String? note, bool isDefault = false, bool canDelete = true}) async {
    try {
      final folder = _makeNew(this, name,
          note: note, isDefault: isDefault, canDelete: canDelete);
      final createdEntity = await CollectFolder.dao.newFolder(folder);
      return createdEntity;
    } catch (_) {}
    return null;
  }
}

extension CollectFolderEx on CollectFolder {}

@collection
@CopyWith()
class CollectFolder {
  final String folderName;
  final int siteId;
  final String notes;
  final Id? id;
  final bool isDefault;
  final bool canDelete;
  @Ignore()
  final bool isSelect;
  @Ignore()
  final bool isSelectByAddDialog;//添加弹出专用属性

  CollectFolder({
    required this.folderName,
    required this.siteId,
    required this.notes,
    this.isDefault = false,
    this.canDelete = true,
    this.isSelect = false,
    this.isSelectByAddDialog = false,
    this.id,
  });

  @Ignore()
  static CollectFolderDao get dao => IsarTool.instance.collectFolderDao;

  ///生成默认的文件夹
  static Future<CollectFolder?> makeDefaultFolder(Ref ref) async {

   return await ref.putANewCollectFolder('默认收藏夹',
        note: '自动生成的收藏夹', isDefault: true, canDelete: false);
  }
}
