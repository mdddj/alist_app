import 'package:dd_js_util/dd_js_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import 'base_result.dart';

part 'fs_detail_info.freezed.dart';
part 'fs_detail_info.g.dart';

@freezed
class FsDetailInfo with _$FsDetailInfo {
  const FsDetailInfo._();

  const factory FsDetailInfo({
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'size') @Default(0) int size,
    @JsonKey(name: 'is_dir') @Default(false) bool isDir,
    @JsonKey(name: 'modified') @Default('') String modified,
    @JsonKey(name: 'sign') @Default('') String sign,
    @JsonKey(name: 'thumb') @Default('') String thumb,
    @JsonKey(name: 'type') @Default(0) int type,
    @JsonKey(name: 'raw_url') @Default('') String rawUrl,
    @JsonKey(name: 'readme') @Default('') String readme,
    @JsonKey(name: 'provider') @Default('') String provider,
    @JsonKey(name: 'related', fromJson: toDartModel)
    @ignore
    @Default(DartTypeModel.nil())
    DartTypeModel related,
  }) = _FsDetailInfo;

  factory FsDetailInfo.fromJson(Map<String, dynamic> json) =>
      _$FsDetailInfoFromJson(json);
}
