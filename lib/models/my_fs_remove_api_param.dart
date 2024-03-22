import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_fs_remove_api_param.freezed.dart';
part 'my_fs_remove_api_param.g.dart';


@freezed
class MyFsRemoveApiParam with _$MyFsRemoveApiParam {
  const MyFsRemoveApiParam._();

  const factory MyFsRemoveApiParam({
      @JsonKey(name: 'names') @Default([])  List<String> names,
      @JsonKey(name: 'dir') @Default('')  String dir,
    }) = _MyFsRemoveApiParam;
  
  factory MyFsRemoveApiParam.fromJson(Map<String, dynamic> json) => _$MyFsRemoveApiParamFromJson(json);

}

