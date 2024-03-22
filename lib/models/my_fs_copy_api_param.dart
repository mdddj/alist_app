import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_fs_copy_api_param.freezed.dart';
part 'my_fs_copy_api_param.g.dart';

@freezed
class MyFsCopyApiParam with _$MyFsCopyApiParam {
  const MyFsCopyApiParam._();

  const factory MyFsCopyApiParam({
    @JsonKey(name: 'src_dir') required String srcDir,
    @JsonKey(name: 'dst_dir') required String dstDir,
    @JsonKey(name: 'names') required List<String> names,
  }) = _MyFsCopyApiParam;

  factory MyFsCopyApiParam.fromJson(Map<String, dynamic> json) => _$MyFsCopyApiParamFromJson(json);
}
