import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_param.freezed.dart';
part 'alert_param.g.dart';

@freezed
class AlertParam with _$AlertParam {
  const AlertParam._();

  const factory AlertParam({
    @JsonKey(name: 'title') @Default('提示') String title,
    @JsonKey(name: 'content') @Default('') String content,
  }) = _AlertParam;

  factory AlertParam.fromJson(Map<String, dynamic> json) =>
      _$AlertParamFromJson(json);
}
