// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthLoginResultImpl _$$AuthLoginResultImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthLoginResultImpl(
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$$AuthLoginResultImplToJson(
        _$AuthLoginResultImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

_$AuthLoginParamImpl _$$AuthLoginParamImplFromJson(Map<String, dynamic> json) =>
    _$AuthLoginParamImpl(
      username: json['username'] as String? ?? '',
      password: json['password'] as String? ?? '',
      otpCode: json['otp_code'] as String?,
    );

Map<String, dynamic> _$$AuthLoginParamImplToJson(
        _$AuthLoginParamImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'otp_code': instance.otpCode,
    };
