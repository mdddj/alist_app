import 'package:dd_js_util/dd_js_util.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../pages/part.dart';

part 'setting_model.freezed.dart';
part 'setting_model.g.dart';

///设置页面
@freezed
class SettingModel with _$SettingModel {
  const SettingModel._();

  const factory SettingModel(
      {@JsonKey(name: 'title') @Default('') String title,
      @igFreezedJson @Default(SizedBox()) Widget child,
      String? subTitle,
      @Default(0) int sort}) = _SettingModel;

  factory SettingModel.fromJson(Map<String, dynamic> json) =>
      _$SettingModelFromJson(json);

  ///app设置
  static IList<SettingModel> get defaultSettings {
    return const IListConst([
      SettingModel(
          title: '主题',
          child: ThemeModelChangeWidget(),
          sort: 11,
          subTitle: '主题模式'),
      SettingModel(
          title: "主题", child: SettingWithTheme(), sort: 12, subTitle: '色彩'),
      SettingModel(
          title: '字体', child: FontSetting(), sort: 21, subTitle: '内置字体'),
      SettingModel(
          title: '字体', child: FontSizeSetting(), sort: 22, subTitle: '字体缩放'),
      SettingModel(
          title: '检查更新',
          child: VersionCheckWidget(),
          sort: 100,
          subTitle: '检查新版本')
    ]).sort(
      (a, b) => a.sort > b.sort ? 1 : 0,
    );
  }
}
