// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_path')
  String get basePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  int get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'disabled')
  bool get disabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'permission')
  int get permission => throw _privateConstructorUsedError;
  @JsonKey(name: 'sso_id')
  String get ssoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'otp')
  bool get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'base_path') String basePath,
      @JsonKey(name: 'role') int role,
      @JsonKey(name: 'disabled') bool disabled,
      @JsonKey(name: 'permission') int permission,
      @JsonKey(name: 'sso_id') String ssoId,
      @JsonKey(name: 'otp') bool otp});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? password = null,
    Object? basePath = null,
    Object? role = null,
    Object? disabled = null,
    Object? permission = null,
    Object? ssoId = null,
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      basePath: null == basePath
          ? _value.basePath
          : basePath // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      disabled: null == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      permission: null == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as int,
      ssoId: null == ssoId
          ? _value.ssoId
          : ssoId // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'base_path') String basePath,
      @JsonKey(name: 'role') int role,
      @JsonKey(name: 'disabled') bool disabled,
      @JsonKey(name: 'permission') int permission,
      @JsonKey(name: 'sso_id') String ssoId,
      @JsonKey(name: 'otp') bool otp});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? password = null,
    Object? basePath = null,
    Object? role = null,
    Object? disabled = null,
    Object? permission = null,
    Object? ssoId = null,
    Object? otp = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      basePath: null == basePath
          ? _value.basePath
          : basePath // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      disabled: null == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      permission: null == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as int,
      ssoId: null == ssoId
          ? _value.ssoId
          : ssoId // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl extends _User {
  const _$UserImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'username') this.username = '',
      @JsonKey(name: 'password') this.password = '',
      @JsonKey(name: 'base_path') this.basePath = '',
      @JsonKey(name: 'role') this.role = 0,
      @JsonKey(name: 'disabled') this.disabled = false,
      @JsonKey(name: 'permission') this.permission = 0,
      @JsonKey(name: 'sso_id') this.ssoId = '',
      @JsonKey(name: 'otp') this.otp = false})
      : super._();

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'password')
  final String password;
  @override
  @JsonKey(name: 'base_path')
  final String basePath;
  @override
  @JsonKey(name: 'role')
  final int role;
  @override
  @JsonKey(name: 'disabled')
  final bool disabled;
  @override
  @JsonKey(name: 'permission')
  final int permission;
  @override
  @JsonKey(name: 'sso_id')
  final String ssoId;
  @override
  @JsonKey(name: 'otp')
  final bool otp;

  @override
  String toString() {
    return 'User(id: $id, username: $username, password: $password, basePath: $basePath, role: $role, disabled: $disabled, permission: $permission, ssoId: $ssoId, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.basePath, basePath) ||
                other.basePath == basePath) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.permission, permission) ||
                other.permission == permission) &&
            (identical(other.ssoId, ssoId) || other.ssoId == ssoId) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, password, basePath,
      role, disabled, permission, ssoId, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User extends User {
  const factory _User(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'username') final String username,
      @JsonKey(name: 'password') final String password,
      @JsonKey(name: 'base_path') final String basePath,
      @JsonKey(name: 'role') final int role,
      @JsonKey(name: 'disabled') final bool disabled,
      @JsonKey(name: 'permission') final int permission,
      @JsonKey(name: 'sso_id') final String ssoId,
      @JsonKey(name: 'otp') final bool otp}) = _$UserImpl;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(name: 'base_path')
  String get basePath;
  @override
  @JsonKey(name: 'role')
  int get role;
  @override
  @JsonKey(name: 'disabled')
  bool get disabled;
  @override
  @JsonKey(name: 'permission')
  int get permission;
  @override
  @JsonKey(name: 'sso_id')
  String get ssoId;
  @override
  @JsonKey(name: 'otp')
  bool get otp;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
