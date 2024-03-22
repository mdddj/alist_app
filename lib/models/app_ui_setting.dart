import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_ui_setting.freezed.dart';
part 'app_ui_setting.g.dart';

@freezed
class AppUiSetting with _$AppUiSetting {
  const AppUiSetting._();

  const factory AppUiSetting(
      {
      //左侧菜单的宽度
      @JsonKey(name: 'leftMenuWidth') @Default(200) double leftMenuWidth,

      //是否在拖拽中
      @Default(false) bool isDragging,

      //是否隐藏左侧抽屉
      @Default(false) bool hideLeftMenu}) = _AppUiSetting;

  factory AppUiSetting.fromJson(Map<String, dynamic> json) => _$AppUiSettingFromJson(json);
}
