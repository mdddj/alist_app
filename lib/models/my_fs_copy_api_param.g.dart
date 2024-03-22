// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_fs_copy_api_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyFsCopyApiParamImpl _$$MyFsCopyApiParamImplFromJson(
        Map<String, dynamic> json) =>
    _$MyFsCopyApiParamImpl(
      srcDir: json['src_dir'] as String,
      dstDir: json['dst_dir'] as String,
      names: (json['names'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$MyFsCopyApiParamImplToJson(
        _$MyFsCopyApiParamImpl instance) =>
    <String, dynamic>{
      'src_dir': instance.srcDir,
      'dst_dir': instance.dstDir,
      'names': instance.names,
    };
