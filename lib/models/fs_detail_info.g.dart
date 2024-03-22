// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fs_detail_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FsDetailInfoImpl _$$FsDetailInfoImplFromJson(Map<String, dynamic> json) =>
    _$FsDetailInfoImpl(
      name: json['name'] as String? ?? '',
      size: json['size'] as int? ?? 0,
      isDir: json['is_dir'] as bool? ?? false,
      modified: json['modified'] as String? ?? '',
      sign: json['sign'] as String? ?? '',
      thumb: json['thumb'] as String? ?? '',
      type: json['type'] as int? ?? 0,
      rawUrl: json['raw_url'] as String? ?? '',
      readme: json['readme'] as String? ?? '',
      provider: json['provider'] as String? ?? '',
      related: json['related'] == null
          ? const DartTypeModel.nil()
          : toDartModel(json['related']),
    );

Map<String, dynamic> _$$FsDetailInfoImplToJson(_$FsDetailInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'size': instance.size,
      'is_dir': instance.isDir,
      'modified': instance.modified,
      'sign': instance.sign,
      'thumb': instance.thumb,
      'type': instance.type,
      'raw_url': instance.rawUrl,
      'readme': instance.readme,
      'provider': instance.provider,
      'related': instance.related,
    };
