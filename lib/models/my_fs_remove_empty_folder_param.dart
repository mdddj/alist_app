import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_fs_remove_empty_folder_param.freezed.dart';
part 'my_fs_remove_empty_folder_param.g.dart';


@freezed
class MyFsRemoveEmptyFolderParam with _$MyFsRemoveEmptyFolderParam {
  const MyFsRemoveEmptyFolderParam._();

  const factory MyFsRemoveEmptyFolderParam({
      @JsonKey(name: 'src_dir') required String srcDir,
    }) = _MyFsRemoveEmptyFolderParam;
  
  factory MyFsRemoveEmptyFolderParam.fromJson(Map<String, dynamic> json) => _$MyFsRemoveEmptyFolderParamFromJson(json);

}

