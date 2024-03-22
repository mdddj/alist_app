// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_fs_rename_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyFsRenameParamImpl _$$MyFsRenameParamImplFromJson(
        Map<String, dynamic> json) =>
    _$MyFsRenameParamImpl(
      srcDir: json['src_dir'] as String,
      renameObjects: (json['rename_objects'] as List<dynamic>)
          .map((e) => RenameObjects.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyFsRenameParamImplToJson(
        _$MyFsRenameParamImpl instance) =>
    <String, dynamic>{
      'src_dir': instance.srcDir,
      'rename_objects': instance.renameObjects,
    };

_$RenameObjectsImpl _$$RenameObjectsImplFromJson(Map<String, dynamic> json) =>
    _$RenameObjectsImpl(
      srcName: json['src_name'] as String? ?? '',
      newName: json['new_name'] as String? ?? '',
    );

Map<String, dynamic> _$$RenameObjectsImplToJson(_$RenameObjectsImpl instance) =>
    <String, dynamic>{
      'src_name': instance.srcName,
      'new_name': instance.newName,
    };
