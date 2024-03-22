// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_fs_move_file_api_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyFsMoveFileApiParamImpl _$$MyFsMoveFileApiParamImplFromJson(
        Map<String, dynamic> json) =>
    _$MyFsMoveFileApiParamImpl(
      srcDir: json['src_dir'] as String,
      dstDir: json['dst_dir'] as String,
      names: (json['names'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$MyFsMoveFileApiParamImplToJson(
        _$MyFsMoveFileApiParamImpl instance) =>
    <String, dynamic>{
      'src_dir': instance.srcDir,
      'dst_dir': instance.dstDir,
      'names': instance.names,
    };
