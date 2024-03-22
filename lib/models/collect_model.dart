import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'collect_model.g.dart';

///收藏模型.
@collection
@CopyWith()
class CollectModel {
  //文件/文件夹名称
  final String name;

  //是否为文件或者目录
  final bool isFolder;

  //完整的路径
  final String fullPath;

  //收藏文件夹ID
  final int folderId;

  //站点ID
  final int siteId;

  //数据库主键
  final Id? id;

  //如果是文件,则把路径也保存一下.
  final String? fileFolderPath;

  //创建时间.
  final DateTime createDate = DateTime.now();

  CollectModel({
    required this.name,
    required this.isFolder,
    required this.fullPath,
    required this.folderId,
    required this.siteId,
    this.id,
    this.fileFolderPath,
  });

  @override
  String toString() {
    return name;
  }
}
