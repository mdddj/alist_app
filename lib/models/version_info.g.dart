// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VersionInfoImpl _$$VersionInfoImplFromJson(Map<String, dynamic> json) =>
    _$VersionInfoImpl(
      createDate: json['createDate'] as String? ?? '',
      description: json['description'] as String? ?? '',
      downloadUrl: json['downloadUrl'] as String? ?? '',
      enable: json['enable'] as bool? ?? false,
      htmlViewPage: json['htmlViewPage'] as String? ?? '',
      id: (json['id'] as num?)?.toInt() ?? 0,
      packageSize: (json['packageSize'] as num?)?.toInt() ?? 0,
      platform: json['platform'] as String? ?? '',
      project: json['project'] == null
          ? const Project()
          : Project.fromJson(json['project'] as Map<String, dynamic>),
      projectName: json['projectName'] as String? ?? '',
      title: json['title'] as String? ?? '',
      versionNumber: json['versionNumber'] as String? ?? '',
      currentVersion: json['currentVersion'] as String?,
    );

Map<String, dynamic> _$$VersionInfoImplToJson(_$VersionInfoImpl instance) =>
    <String, dynamic>{
      'createDate': instance.createDate,
      'description': instance.description,
      'downloadUrl': instance.downloadUrl,
      'enable': instance.enable,
      'htmlViewPage': instance.htmlViewPage,
      'id': instance.id,
      'packageSize': instance.packageSize,
      'platform': instance.platform,
      'project': instance.project,
      'projectName': instance.projectName,
      'title': instance.title,
      'versionNumber': instance.versionNumber,
      'currentVersion': instance.currentVersion,
    };

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      description: json['description'] as String? ?? '',
      downloadUrl: json['downloadUrl'] as String? ?? '',
      github: json['github'] as String? ?? '',
      id: (json['id'] as num?)?.toInt() ?? 0,
      logo: json['logo'] as String? ?? '',
      name: json['name'] as String? ?? '',
      previewUrl: json['previewUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'downloadUrl': instance.downloadUrl,
      'github': instance.github,
      'id': instance.id,
      'logo': instance.logo,
      'name': instance.name,
      'previewUrl': instance.previewUrl,
    };
