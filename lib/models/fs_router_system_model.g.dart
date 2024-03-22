// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fs_router_system_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FsRouterSystemModelImpl _$$FsRouterSystemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FsRouterSystemModelImpl(
      router: json['router'] == null
          ? const IListConst([])
          : IList<FsModel>.fromJson(json['router'],
              (value) => FsModel.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$FsRouterSystemModelImplToJson(
        _$FsRouterSystemModelImpl instance) =>
    <String, dynamic>{
      'router': instance.router.toJson(
        (value) => value,
      ),
    };
