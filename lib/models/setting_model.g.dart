// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingModelImpl _$$SettingModelImplFromJson(Map<String, dynamic> json) =>
    _$SettingModelImpl(
      title: json['title'] as String? ?? '',
      subTitle: json['subTitle'] as String?,
      sort: json['sort'] as int? ?? 0,
    );

Map<String, dynamic> _$$SettingModelImplToJson(_$SettingModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subTitle': instance.subTitle,
      'sort': instance.sort,
    };
