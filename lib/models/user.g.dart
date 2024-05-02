// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      username: json['username'] as String? ?? '',
      password: json['password'] as String? ?? '',
      basePath: json['base_path'] as String? ?? '',
      role: (json['role'] as num?)?.toInt() ?? 0,
      disabled: json['disabled'] as bool? ?? false,
      permission: (json['permission'] as num?)?.toInt() ?? 0,
      ssoId: json['sso_id'] as String? ?? '',
      otp: json['otp'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'base_path': instance.basePath,
      'role': instance.role,
      'disabled': instance.disabled,
      'permission': instance.permission,
      'sso_id': instance.ssoId,
      'otp': instance.otp,
    };
