// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fs_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FsSearchResultImpl _$$FsSearchResultImplFromJson(Map<String, dynamic> json) =>
    _$FsSearchResultImpl(
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => SearchContent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$$FsSearchResultImplToJson(
        _$FsSearchResultImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'total': instance.total,
    };

_$SearchContentImpl _$$SearchContentImplFromJson(Map<String, dynamic> json) =>
    _$SearchContentImpl(
      parent: json['parent'] as String? ?? '',
      name: json['name'] as String? ?? '',
      isDir: json['is_dir'] as bool? ?? false,
      size: json['size'] as int? ?? 0,
      type: json['type'] as int? ?? 0,
    );

Map<String, dynamic> _$$SearchContentImplToJson(_$SearchContentImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'name': instance.name,
      'is_dir': instance.isDir,
      'size': instance.size,
      'type': instance.type,
    };
