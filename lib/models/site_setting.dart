import 'package:freezed_annotation/freezed_annotation.dart';

part 'site_setting.freezed.dart';
part 'site_setting.g.dart';

extension SiteSettingEx on SiteSetting {
  String getLogo() {
    if (favicon.isNotEmpty) {
      return favicon;
    } else if (logo.isNotEmpty) {
      return logo;
    }
    return 'https://jsd.nn.ci/gh/alist-org/logo@main/logo.svg';
  }
}

@freezed
class SiteSetting with _$SiteSetting {
  const SiteSetting._();

  const factory SiteSetting({
    @JsonKey(name: 'allow_indexed') @Default('') String allowIndexed,
    @JsonKey(name: 'allow_mounted') @Default('') String allowMounted,
    @JsonKey(name: 'announcement') @Default('') String announcement,
    @JsonKey(name: 'audio_autoplay') @Default('') String audioAutoplay,
    @JsonKey(name: 'audio_cover') @Default('') String audioCover,
    @JsonKey(name: 'auto_update_index') @Default('') String autoUpdateIndex,
    @JsonKey(name: 'default_page_size') @Default('') String defaultPageSize,
    @JsonKey(name: 'external_previews') @Default('') String externalPreviews,
    @JsonKey(name: 'favicon') @Default('') String favicon,
    @JsonKey(name: 'filename_char_mapping')
    @Default('')
    String filenameCharMapping,
    @JsonKey(name: 'forward_direct_link_params')
    @Default('')
    String forwardDirectLinkParams,
    @JsonKey(name: 'hide_files') @Default('') String hideFiles,
    @JsonKey(name: 'home_container') @Default('') String homeContainer,
    @JsonKey(name: 'home_icon') @Default('') String homeIcon,
    @JsonKey(name: 'iframe_previews') @Default('') String iframePreviews,
    @JsonKey(name: 'logo') @Default('') String logo,
    @JsonKey(name: 'main_color') @Default('') String mainColor,
    @JsonKey(name: 'ocr_api') @Default('') String ocrApi,
    @JsonKey(name: 'package_download') @Default('') String packageDownload,
    @JsonKey(name: 'pagination_type') @Default('') String paginationType,
    @JsonKey(name: 'robots_txt') @Default('') String robotsTxt,
    @JsonKey(name: 'search_index') @Default('') String searchIndex,
    @JsonKey(name: 'settings_layout') @Default('') String settingsLayout,
    @JsonKey(name: 'site_title') @Default('') String siteTitle,
    @JsonKey(name: 'sso_login_enabled') @Default('') String ssoLoginEnabled,
    @JsonKey(name: 'sso_login_platform') @Default('') String ssoLoginPlatform,
    @JsonKey(name: 'version') @Default('') String version,
    @JsonKey(name: 'video_autoplay') @Default('') String videoAutoplay,
  }) = _SiteSetting;

  factory SiteSetting.fromJson(Map<String, dynamic> json) =>
      _$SiteSettingFromJson(json);
}
