// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_fs_remove_api_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyFsRemoveApiParamImpl _$$MyFsRemoveApiParamImplFromJson(
        Map<String, dynamic> json) =>
    _$MyFsRemoveApiParamImpl(
      names:
          (json['names'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      dir: json['dir'] as String? ?? '',
    );

Map<String, dynamic> _$$MyFsRemoveApiParamImplToJson(
        _$MyFsRemoveApiParamImpl instance) =>
    <String, dynamic>{
      'names': instance.names,
      'dir': instance.dir,
    };
