


import 'package:isar/isar.dart';

part 'history_path.g.dart';



///历史浏览路径
@collection
class PathHistory {

  Id? id;

  String? path;

  DateTime time = DateTime.now();
}