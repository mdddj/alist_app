// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppModel {
  DomainAccount? get domainAccount => throw _privateConstructorUsedError;
  @Doc(message: '当前登录的用户')
  User? get user => throw _privateConstructorUsedError;
  FileOptionModel? get fileOpen => throw _privateConstructorUsedError;
  bool get showUploadFileWidget => throw _privateConstructorUsedError;
  bool get loginLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppModelCopyWith<AppModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppModelCopyWith<$Res> {
  factory $AppModelCopyWith(AppModel value, $Res Function(AppModel) then) =
      _$AppModelCopyWithImpl<$Res, AppModel>;
  @useResult
  $Res call(
      {DomainAccount? domainAccount,
      @Doc(message: '当前登录的用户') User? user,
      FileOptionModel? fileOpen,
      bool showUploadFileWidget,
      bool loginLoading});

  $UserCopyWith<$Res>? get user;
  $FileOptionModelCopyWith<$Res>? get fileOpen;
}

/// @nodoc
class _$AppModelCopyWithImpl<$Res, $Val extends AppModel>
    implements $AppModelCopyWith<$Res> {
  _$AppModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domainAccount = freezed,
    Object? user = freezed,
    Object? fileOpen = freezed,
    Object? showUploadFileWidget = null,
    Object? loginLoading = null,
  }) {
    return _then(_value.copyWith(
      domainAccount: freezed == domainAccount
          ? _value.domainAccount
          : domainAccount // ignore: cast_nullable_to_non_nullable
              as DomainAccount?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      fileOpen: freezed == fileOpen
          ? _value.fileOpen
          : fileOpen // ignore: cast_nullable_to_non_nullable
              as FileOptionModel?,
      showUploadFileWidget: null == showUploadFileWidget
          ? _value.showUploadFileWidget
          : showUploadFileWidget // ignore: cast_nullable_to_non_nullable
              as bool,
      loginLoading: null == loginLoading
          ? _value.loginLoading
          : loginLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FileOptionModelCopyWith<$Res>? get fileOpen {
    if (_value.fileOpen == null) {
      return null;
    }

    return $FileOptionModelCopyWith<$Res>(_value.fileOpen!, (value) {
      return _then(_value.copyWith(fileOpen: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppModelImplCopyWith<$Res>
    implements $AppModelCopyWith<$Res> {
  factory _$$AppModelImplCopyWith(
          _$AppModelImpl value, $Res Function(_$AppModelImpl) then) =
      __$$AppModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DomainAccount? domainAccount,
      @Doc(message: '当前登录的用户') User? user,
      FileOptionModel? fileOpen,
      bool showUploadFileWidget,
      bool loginLoading});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $FileOptionModelCopyWith<$Res>? get fileOpen;
}

/// @nodoc
class __$$AppModelImplCopyWithImpl<$Res>
    extends _$AppModelCopyWithImpl<$Res, _$AppModelImpl>
    implements _$$AppModelImplCopyWith<$Res> {
  __$$AppModelImplCopyWithImpl(
      _$AppModelImpl _value, $Res Function(_$AppModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domainAccount = freezed,
    Object? user = freezed,
    Object? fileOpen = freezed,
    Object? showUploadFileWidget = null,
    Object? loginLoading = null,
  }) {
    return _then(_$AppModelImpl(
      domainAccount: freezed == domainAccount
          ? _value.domainAccount
          : domainAccount // ignore: cast_nullable_to_non_nullable
              as DomainAccount?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      fileOpen: freezed == fileOpen
          ? _value.fileOpen
          : fileOpen // ignore: cast_nullable_to_non_nullable
              as FileOptionModel?,
      showUploadFileWidget: null == showUploadFileWidget
          ? _value.showUploadFileWidget
          : showUploadFileWidget // ignore: cast_nullable_to_non_nullable
              as bool,
      loginLoading: null == loginLoading
          ? _value.loginLoading
          : loginLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppModelImpl extends _AppModel {
  const _$AppModelImpl(
      {this.domainAccount,
      @Doc(message: '当前登录的用户') this.user,
      this.fileOpen,
      this.showUploadFileWidget = false,
      this.loginLoading = false})
      : super._();

  @override
  final DomainAccount? domainAccount;
  @override
  @Doc(message: '当前登录的用户')
  final User? user;
  @override
  final FileOptionModel? fileOpen;
  @override
  @JsonKey()
  final bool showUploadFileWidget;
  @override
  @JsonKey()
  final bool loginLoading;

  @override
  String toString() {
    return 'AppModel(domainAccount: $domainAccount, user: $user, fileOpen: $fileOpen, showUploadFileWidget: $showUploadFileWidget, loginLoading: $loginLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppModelImpl &&
            (identical(other.domainAccount, domainAccount) ||
                other.domainAccount == domainAccount) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.fileOpen, fileOpen) ||
                other.fileOpen == fileOpen) &&
            (identical(other.showUploadFileWidget, showUploadFileWidget) ||
                other.showUploadFileWidget == showUploadFileWidget) &&
            (identical(other.loginLoading, loginLoading) ||
                other.loginLoading == loginLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, domainAccount, user, fileOpen,
      showUploadFileWidget, loginLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppModelImplCopyWith<_$AppModelImpl> get copyWith =>
      __$$AppModelImplCopyWithImpl<_$AppModelImpl>(this, _$identity);
}

abstract class _AppModel extends AppModel {
  const factory _AppModel(
      {final DomainAccount? domainAccount,
      @Doc(message: '当前登录的用户') final User? user,
      final FileOptionModel? fileOpen,
      final bool showUploadFileWidget,
      final bool loginLoading}) = _$AppModelImpl;
  const _AppModel._() : super._();

  @override
  DomainAccount? get domainAccount;
  @override
  @Doc(message: '当前登录的用户')
  User? get user;
  @override
  FileOptionModel? get fileOpen;
  @override
  bool get showUploadFileWidget;
  @override
  bool get loginLoading;
  @override
  @JsonKey(ignore: true)
  _$$AppModelImplCopyWith<_$AppModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
