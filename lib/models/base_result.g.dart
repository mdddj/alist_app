// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResultImpl _$$BaseResultImplFromJson(Map<String, dynamic> json) =>
    _$BaseResultImpl(
      code: json['code'] as int? ?? 0,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? const DartTypeModel.nil()
          : toDartModel(json['data']),
    );

Map<String, dynamic> _$$BaseResultImplToJson(_$BaseResultImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
