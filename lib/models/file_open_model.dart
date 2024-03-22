

import 'package:freezed_annotation/freezed_annotation.dart';

import '../actions/part.dart';
import 'fs_list.dart';

part 'file_open_model.freezed.dart';

@freezed
class FileOptionModel with _$FileOptionModel {

  const factory FileOptionModel({
    required FileAction action,
    required FsModel fsModel
}) = _FileOptionModel;
}