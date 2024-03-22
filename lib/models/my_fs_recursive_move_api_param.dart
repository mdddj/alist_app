import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_fs_recursive_move_api_param.freezed.dart';
part 'my_fs_recursive_move_api_param.g.dart';


@freezed
class MyFsRecursiveMoveApiParam with _$MyFsRecursiveMoveApiParam {
  const MyFsRecursiveMoveApiParam._();

  const factory MyFsRecursiveMoveApiParam({
      @JsonKey(name: 'src_dir') required String srcDir,
      @JsonKey(name: 'dst_dir') required String dstDir,
    }) = _MyFsRecursiveMoveApiParam;
  
  factory MyFsRecursiveMoveApiParam.fromJson(Map<String, dynamic> json) => _$MyFsRecursiveMoveApiParamFromJson(json);

}

