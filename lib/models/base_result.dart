import 'package:dd_js_util/dd_js_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_result.freezed.dart';
part 'base_result.g.dart';

extension BaseResultEx on BaseResult {
  bool get isSuccess => code == 0;
}

@freezed
class BaseResult with _$BaseResult {
  const BaseResult._();

  const factory BaseResult(
      {@JsonKey(name: 'code') @Default(0) int code,
      @JsonKey(name: 'message') @Default('') String message,
      @JsonKey(name: "data", fromJson: toDartModel)
      @Default(DartTypeModel.nil())
      DartTypeModel data}) = _BaseResult;

  factory BaseResult.fromJson(Map<String, dynamic> json) =>
      _$BaseResultFromJson(json);
}

DartTypeModel toDartModel(dynamic data) => DartTypeModel.createFrom(data);
