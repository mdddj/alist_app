import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_login.freezed.dart';
part 'auth_login.g.dart';


@freezed
class AuthLoginResult with _$AuthLoginResult {
  const AuthLoginResult._();

  const factory AuthLoginResult({
      @JsonKey(name: 'token') @Default('')  String token,
    }) = _AuthLoginResult;
  
  factory AuthLoginResult.fromJson(Map<String, dynamic> json) => _$AuthLoginResultFromJson(json);

}


//登录参数
@freezed
class AuthLoginParam with _$AuthLoginParam {
  const AuthLoginParam._();

  const factory AuthLoginParam({
    @JsonKey(name: 'username') @Default('')  String username,
    @JsonKey(name: 'password') @Default('')  String password,
    @JsonKey(name: 'otp_code') String? otpCode
  }) = _AuthLoginParam;

  factory AuthLoginParam.fromJson(Map<String, dynamic> json) => _$AuthLoginParamFromJson(json);

}
