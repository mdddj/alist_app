import 'package:freezed_annotation/freezed_annotation.dart';

part 'version_info.freezed.dart';
part 'version_info.g.dart';


@freezed
class VersionInfo with _$VersionInfo {
  const VersionInfo._();

  const factory VersionInfo({
      @JsonKey(name: 'createDate') @Default('')  String createDate,
      @JsonKey(name: 'description') @Default('')  String description,
      @JsonKey(name: 'downloadUrl') @Default('')  String downloadUrl,
      @JsonKey(name: 'enable') @Default(false)  bool enable,
      @JsonKey(name: 'htmlViewPage') @Default('')  String htmlViewPage,
      @JsonKey(name: 'id') @Default(0)  int id,
      @JsonKey(name: 'packageSize') @Default(0)  int packageSize,
      @JsonKey(name: 'platform') @Default('')  String platform,
      @JsonKey(name: 'project') @Default(Project())  Project project,
      @JsonKey(name: 'projectName') @Default('')  String projectName,
      @JsonKey(name: 'title') @Default('')  String title,
      @JsonKey(name: 'versionNumber') @Default('')  String versionNumber,

      ///本地址,当前版本
     String? currentVersion
    }) = _VersionInfo;
  
  factory VersionInfo.fromJson(Map<String, dynamic> json) => _$VersionInfoFromJson(json);

}


@freezed
class Project with _$Project {
  const Project._();

  const factory Project({
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'downloadUrl') @Default('') String downloadUrl,
    @JsonKey(name: 'github') @Default('') String github,
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'logo') @Default('') String logo,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'previewUrl') @Default('') String previewUrl,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

}

