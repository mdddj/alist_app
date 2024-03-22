import 'package:isar/isar.dart';

part 'my_log.g.dart';

///日志
@collection
class MyLog {
  Id? id;
  bool? success;
  String? log;
  DateTime dateTime = DateTime.now();
}


