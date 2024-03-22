import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_fs_rename_param.freezed.dart';
part 'my_fs_rename_param.g.dart';


@freezed
class MyFsRenameParam with _$MyFsRenameParam {
  const MyFsRenameParam._();

  const factory MyFsRenameParam({
      @JsonKey(name: 'src_dir') required String srcDir,
      @JsonKey(name: 'rename_objects') required List<RenameObjects> renameObjects,
    }) = _MyFsRenameParam;
  
  factory MyFsRenameParam.fromJson(Map<String, dynamic> json) => _$MyFsRenameParamFromJson(json);

}


@freezed
class RenameObjects with _$RenameObjects {
  const RenameObjects._();

  const factory RenameObjects({
      @JsonKey(name: 'src_name') @Default('')  String srcName,
      @JsonKey(name: 'new_name') @Default('')  String newName,
    }) = _RenameObjects;
  
  factory RenameObjects.fromJson(Map<String, dynamic> json) => _$RenameObjectsFromJson(json);

}

