// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthLoginResult _$AuthLoginResultFromJson(Map<String, dynamic> json) {
  return _AuthLoginResult.fromJson(json);
}

/// @nodoc
mixin _$AuthLoginResult {
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthLoginResultCopyWith<AuthLoginResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLoginResultCopyWith<$Res> {
  factory $AuthLoginResultCopyWith(
          AuthLoginResult value, $Res Function(AuthLoginResult) then) =
      _$AuthLoginResultCopyWithImpl<$Res, AuthLoginResult>;
  @useResult
  $Res call({@JsonKey(name: 'token') String token});
}

/// @nodoc
class _$AuthLoginResultCopyWithImpl<$Res, $Val extends AuthLoginResult>
    implements $AuthLoginResultCopyWith<$Res> {
  _$AuthLoginResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthLoginResultImplCopyWith<$Res>
    implements $AuthLoginResultCopyWith<$Res> {
  factory _$$AuthLoginResultImplCopyWith(_$AuthLoginResultImpl value,
          $Res Function(_$AuthLoginResultImpl) then) =
      __$$AuthLoginResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'token') String token});
}

/// @nodoc
class __$$AuthLoginResultImplCopyWithImpl<$Res>
    extends _$AuthLoginResultCopyWithImpl<$Res, _$AuthLoginResultImpl>
    implements _$$AuthLoginResultImplCopyWith<$Res> {
  __$$AuthLoginResultImplCopyWithImpl(
      _$AuthLoginResultImpl _value, $Res Function(_$AuthLoginResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$AuthLoginResultImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthLoginResultImpl extends _AuthLoginResult {
  const _$AuthLoginResultImpl({@JsonKey(name: 'token') this.token = ''})
      : super._();

  factory _$AuthLoginResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthLoginResultImplFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;

  @override
  String toString() {
    return 'AuthLoginResult(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoginResultImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLoginResultImplCopyWith<_$AuthLoginResultImpl> get copyWith =>
      __$$AuthLoginResultImplCopyWithImpl<_$AuthLoginResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthLoginResultImplToJson(
      this,
    );
  }
}

abstract class _AuthLoginResult extends AuthLoginResult {
  const factory _AuthLoginResult({@JsonKey(name: 'token') final String token}) =
      _$AuthLoginResultImpl;
  const _AuthLoginResult._() : super._();

  factory _AuthLoginResult.fromJson(Map<String, dynamic> json) =
      _$AuthLoginResultImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$AuthLoginResultImplCopyWith<_$AuthLoginResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthLoginParam _$AuthLoginParamFromJson(Map<String, dynamic> json) {
  return _AuthLoginParam.fromJson(json);
}

/// @nodoc
mixin _$AuthLoginParam {
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'otp_code')
  String? get otpCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthLoginParamCopyWith<AuthLoginParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLoginParamCopyWith<$Res> {
  factory $AuthLoginParamCopyWith(
          AuthLoginParam value, $Res Function(AuthLoginParam) then) =
      _$AuthLoginParamCopyWithImpl<$Res, AuthLoginParam>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'otp_code') String? otpCode});
}

/// @nodoc
class _$AuthLoginParamCopyWithImpl<$Res, $Val extends AuthLoginParam>
    implements $AuthLoginParamCopyWith<$Res> {
  _$AuthLoginParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? otpCode = freezed,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: freezed == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthLoginParamImplCopyWith<$Res>
    implements $AuthLoginParamCopyWith<$Res> {
  factory _$$AuthLoginParamImplCopyWith(_$AuthLoginParamImpl value,
          $Res Function(_$AuthLoginParamImpl) then) =
      __$$AuthLoginParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'otp_code') String? otpCode});
}

/// @nodoc
class __$$AuthLoginParamImplCopyWithImpl<$Res>
    extends _$AuthLoginParamCopyWithImpl<$Res, _$AuthLoginParamImpl>
    implements _$$AuthLoginParamImplCopyWith<$Res> {
  __$$AuthLoginParamImplCopyWithImpl(
      _$AuthLoginParamImpl _value, $Res Function(_$AuthLoginParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? otpCode = freezed,
  }) {
    return _then(_$AuthLoginParamImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: freezed == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthLoginParamImpl extends _AuthLoginParam {
  const _$AuthLoginParamImpl(
      {@JsonKey(name: 'username') this.username = '',
      @JsonKey(name: 'password') this.password = '',
      @JsonKey(name: 'otp_code') this.otpCode})
      : super._();

  factory _$AuthLoginParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthLoginParamImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'password')
  final String password;
  @override
  @JsonKey(name: 'otp_code')
  final String? otpCode;

  @override
  String toString() {
    return 'AuthLoginParam(username: $username, password: $password, otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoginParamImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password, otpCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLoginParamImplCopyWith<_$AuthLoginParamImpl> get copyWith =>
      __$$AuthLoginParamImplCopyWithImpl<_$AuthLoginParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthLoginParamImplToJson(
      this,
    );
  }
}

abstract class _AuthLoginParam extends AuthLoginParam {
  const factory _AuthLoginParam(
      {@JsonKey(name: 'username') final String username,
      @JsonKey(name: 'password') final String password,
      @JsonKey(name: 'otp_code') final String? otpCode}) = _$AuthLoginParamImpl;
  const _AuthLoginParam._() : super._();

  factory _AuthLoginParam.fromJson(Map<String, dynamic> json) =
      _$AuthLoginParamImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(name: 'otp_code')
  String? get otpCode;
  @override
  @JsonKey(ignore: true)
  _$$AuthLoginParamImplCopyWith<_$AuthLoginParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
