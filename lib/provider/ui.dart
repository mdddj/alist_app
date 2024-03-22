import 'package:dd_js_util/dd_js_util.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/app_ui_setting.dart';

part 'ui.g.dart';

///ui
@Riverpod(keepAlive: true)
class AppUiSettingState extends _$AppUiSettingState {
  @override
  AppUiSetting build() {
    return const AppUiSetting(leftMenuWidth: 200);
  }

  void changeUi(ValueCopyWith<AppUiSetting> doChange) {
    state = doChange.call(state);
  }

  void changeWidth(double newWidth) => changeUi((value) => value.copyWith(leftMenuWidth: newWidth));

  void changeIsDragging(bool newValue) => changeUi((value) => value.copyWith(isDragging: newValue));
}
