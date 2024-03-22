import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_fs_move_file_api_param.freezed.dart';
part 'my_fs_move_file_api_param.g.dart';


@freezed
class MyFsMoveFileApiParam with _$MyFsMoveFileApiParam {
  const MyFsMoveFileApiParam._();

  const factory MyFsMoveFileApiParam({
      @JsonKey(name: 'src_dir') required String srcDir,
      @JsonKey(name: 'dst_dir') required String dstDir,
      @JsonKey(name: 'names') required List<String> names,
    }) = _MyFsMoveFileApiParam;
  
  factory MyFsMoveFileApiParam.fromJson(Map<String, dynamic> json) => _$MyFsMoveFileApiParamFromJson(json);

}

