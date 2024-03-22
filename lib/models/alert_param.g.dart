// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlertParamImpl _$$AlertParamImplFromJson(Map<String, dynamic> json) =>
    _$AlertParamImpl(
      title: json['title'] as String? ?? '提示',
      content: json['content'] as String? ?? '',
    );

Map<String, dynamic> _$$AlertParamImplToJson(_$AlertParamImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };
