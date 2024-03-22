import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_setting.freezed.dart';
part 'app_setting.g.dart';

extension MyFontEx on MyFont {
  void onChange(WidgetRef ref) {
    ref
        .read(appSettingStateProvider.notifier)
        .changeSetting((value) => value.copyWith(font: font));
  }
}

enum MyFont {
  no("", "默认字体");

  const MyFont(this.font, this.title);

  final String font;
  final String title;
}

extension AppSettingStateEx on WidgetRef {
  AppSetting get appSetting => watch(appSettingStateProvider
      .select((value) => value.value ?? const AppSetting()));

  AppSetting get appSettingRead => read(appSettingStateProvider
      .select((value) => value.value ?? const AppSetting()));

  void changeAppSetting(ValueCopyWith<AppSetting> onChange) {
    read(appSettingStateProvider.notifier).changeSetting(onChange);
  }
}

@Riverpod(keepAlive: true)
class AppSettingState extends _$AppSettingState {
  @override
  Future<AppSetting> build() async {
    return AppSettingCache().getSetting();
  }

  Future<void> changeSetting(ValueCopyWith<AppSetting> doUpdate) async {
    final setting = state.value ?? const AppSetting();
    final newSetting = doUpdate(setting);
    state = AsyncValue.data(newSetting);
    await AppSettingCache().setNewSetting(newSetting);
  }
}

@freezed
@HiveType(typeId: 1)
class AppSetting with _$AppSetting {
  const AppSetting._();

  const factory AppSetting(
      {@HiveField(0) @JsonKey(name: 'font') @Default('') String font,
      @HiveField(1, defaultValue: '')
      @JsonKey(name: 'defaultDownloadPath')
      @Default('')
      String defaultDownloadPath,
      @HiveField(2, defaultValue: false)
      @JsonKey(name: 'isUseDefaultDownloadPath')
      @Default(false)
      bool isUseDefaultDownloadPath,
      @Default(0.88)
      @HiveField(3, defaultValue: 0.88)
      @JsonKey(name: 'fontZoom')
      double fontZoom}) = _AppSetting;

  factory AppSetting.fromJson(Map<String, dynamic> json) =>
      _$AppSettingFromJson(json);
}

class AppSettingCache extends CacheBase<AppSetting> {
  final String _defaultSettingKey = "default";

  @override
  String get boxName => 'setting';

  Future<AppSetting> getSetting() async {
    final setting = await getValue(_defaultSettingKey);
    return setting ?? const AppSetting();
  }

  Future<void> setNewSetting(AppSetting setting) async {
    await setValue(_defaultSettingKey, setting);
  }
}
