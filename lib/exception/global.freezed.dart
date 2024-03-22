// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GlobalError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseApiException exception) api,
    required TResult Function(String message) biz,
    required TResult Function() decode,
    required TResult Function() cancel,
    required TResult Function() tokenExpire,
    required TResult Function() noPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseApiException exception)? api,
    TResult? Function(String message)? biz,
    TResult? Function()? decode,
    TResult? Function()? cancel,
    TResult? Function()? tokenExpire,
    TResult? Function()? noPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseApiException exception)? api,
    TResult Function(String message)? biz,
    TResult Function()? decode,
    TResult Function()? cancel,
    TResult Function()? tokenExpire,
    TResult Function()? noPermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiError value) api,
    required TResult Function(BizError value) biz,
    required TResult Function(DecodeError value) decode,
    required TResult Function(RequestCancelError value) cancel,
    required TResult Function(TokenExpireError value) tokenExpire,
    required TResult Function(NoPermissionError value) noPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiError value)? api,
    TResult? Function(BizError value)? biz,
    TResult? Function(DecodeError value)? decode,
    TResult? Function(RequestCancelError value)? cancel,
    TResult? Function(TokenExpireError value)? tokenExpire,
    TResult? Function(NoPermissionError value)? noPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiError value)? api,
    TResult Function(BizError value)? biz,
    TResult Function(DecodeError value)? decode,
    TResult Function(RequestCancelError value)? cancel,
    TResult Function(TokenExpireError value)? tokenExpire,
    TResult Function(NoPermissionError value)? noPermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalErrorCopyWith<$Res> {
  factory $GlobalErrorCopyWith(
          GlobalError value, $Res Function(GlobalError) then) =
      _$GlobalErrorCopyWithImpl<$Res, GlobalError>;
}

/// @nodoc
class _$GlobalErrorCopyWithImpl<$Res, $Val extends GlobalError>
    implements $GlobalErrorCopyWith<$Res> {
  _$GlobalErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiErrorImplCopyWith<$Res> {
  factory _$$ApiErrorImplCopyWith(
          _$ApiErrorImpl value, $Res Function(_$ApiErrorImpl) then) =
      __$$ApiErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseApiException exception});

  $BaseApiExceptionCopyWith<$Res> get exception;
}

/// @nodoc
class __$$ApiErrorImplCopyWithImpl<$Res>
    extends _$GlobalErrorCopyWithImpl<$Res, _$ApiErrorImpl>
    implements _$$ApiErrorImplCopyWith<$Res> {
  __$$ApiErrorImplCopyWithImpl(
      _$ApiErrorImpl _value, $Res Function(_$ApiErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$ApiErrorImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as BaseApiException,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseApiExceptionCopyWith<$Res> get exception {
    return $BaseApiExceptionCopyWith<$Res>(_value.exception, (value) {
      return _then(_value.copyWith(exception: value));
    });
  }
}

/// @nodoc

class _$ApiErrorImpl extends ApiError {
  _$ApiErrorImpl(this.exception) : super._();

  @override
  final BaseApiException exception;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      __$$ApiErrorImplCopyWithImpl<_$ApiErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseApiException exception) api,
    required TResult Function(String message) biz,
    required TResult Function() decode,
    required TResult Function() cancel,
    required TResult Function() tokenExpire,
    required TResult Function() noPermission,
  }) {
    return api(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseApiException exception)? api,
    TResult? Function(String message)? biz,
    TResult? Function()? decode,
    TResult? Function()? cancel,
    TResult? Function()? tokenExpire,
    TResult? Function()? noPermission,
  }) {
    return api?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseApiException exception)? api,
    TResult Function(String message)? biz,
    TResult Function()? decode,
    TResult Function()? cancel,
    TResult Function()? tokenExpire,
    TResult Function()? noPermission,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiError value) api,
    required TResult Function(BizError value) biz,
    required TResult Function(DecodeError value) decode,
    required TResult Function(RequestCancelError value) cancel,
    required TResult Function(TokenExpireError value) tokenExpire,
    required TResult Function(NoPermissionError value) noPermission,
  }) {
    return api(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiError value)? api,
    TResult? Function(BizError value)? biz,
    TResult? Function(DecodeError value)? decode,
    TResult? Function(RequestCancelError value)? cancel,
    TResult? Function(TokenExpireError value)? tokenExpire,
    TResult? Function(NoPermissionError value)? noPermission,
  }) {
    return api?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiError value)? api,
    TResult Function(BizError value)? biz,
    TResult Function(DecodeError value)? decode,
    TResult Function(RequestCancelError value)? cancel,
    TResult Function(TokenExpireError value)? tokenExpire,
    TResult Function(NoPermissionError value)? noPermission,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(this);
    }
    return orElse();
  }
}

abstract class ApiError extends GlobalError {
  factory ApiError(final BaseApiException exception) = _$ApiErrorImpl;
  ApiError._() : super._();

  BaseApiException get exception;
  @JsonKey(ignore: true)
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BizErrorImplCopyWith<$Res> {
  factory _$$BizErrorImplCopyWith(
          _$BizErrorImpl value, $Res Function(_$BizErrorImpl) then) =
      __$$BizErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BizErrorImplCopyWithImpl<$Res>
    extends _$GlobalErrorCopyWithImpl<$Res, _$BizErrorImpl>
    implements _$$BizErrorImplCopyWith<$Res> {
  __$$BizErrorImplCopyWithImpl(
      _$BizErrorImpl _value, $Res Function(_$BizErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BizErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BizErrorImpl extends BizError {
  _$BizErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BizErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BizErrorImplCopyWith<_$BizErrorImpl> get copyWith =>
      __$$BizErrorImplCopyWithImpl<_$BizErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseApiException exception) api,
    required TResult Function(String message) biz,
    required TResult Function() decode,
    required TResult Function() cancel,
    required TResult Function() tokenExpire,
    required TResult Function() noPermission,
  }) {
    return biz(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseApiException exception)? api,
    TResult? Function(String message)? biz,
    TResult? Function()? decode,
    TResult? Function()? cancel,
    TResult? Function()? tokenExpire,
    TResult? Function()? noPermission,
  }) {
    return biz?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseApiException exception)? api,
    TResult Function(String message)? biz,
    TResult Function()? decode,
    TResult Function()? cancel,
    TResult Function()? tokenExpire,
    TResult Function()? noPermission,
    required TResult orElse(),
  }) {
    if (biz != null) {
      return biz(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiError value) api,
    required TResult Function(BizError value) biz,
    required TResult Function(DecodeError value) decode,
    required TResult Function(RequestCancelError value) cancel,
    required TResult Function(TokenExpireError value) tokenExpire,
    required TResult Function(NoPermissionError value) noPermission,
  }) {
    return biz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiError value)? api,
    TResult? Function(BizError value)? biz,
    TResult? Function(DecodeError value)? decode,
    TResult? Function(RequestCancelError value)? cancel,
    TResult? Function(TokenExpireError value)? tokenExpire,
    TResult? Function(NoPermissionError value)? noPermission,
  }) {
    return biz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiError value)? api,
    TResult Function(BizError value)? biz,
    TResult Function(DecodeError value)? decode,
    TResult Function(RequestCancelError value)? cancel,
    TResult Function(TokenExpireError value)? tokenExpire,
    TResult Function(NoPermissionError value)? noPermission,
    required TResult orElse(),
  }) {
    if (biz != null) {
      return biz(this);
    }
    return orElse();
  }
}

abstract class BizError extends GlobalError {
  factory BizError(final String message) = _$BizErrorImpl;
  BizError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$BizErrorImplCopyWith<_$BizErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecodeErrorImplCopyWith<$Res> {
  factory _$$DecodeErrorImplCopyWith(
          _$DecodeErrorImpl value, $Res Function(_$DecodeErrorImpl) then) =
      __$$DecodeErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DecodeErrorImplCopyWithImpl<$Res>
    extends _$GlobalErrorCopyWithImpl<$Res, _$DecodeErrorImpl>
    implements _$$DecodeErrorImplCopyWith<$Res> {
  __$$DecodeErrorImplCopyWithImpl(
      _$DecodeErrorImpl _value, $Res Function(_$DecodeErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DecodeErrorImpl extends DecodeError {
  _$DecodeErrorImpl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DecodeErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseApiException exception) api,
    required TResult Function(String message) biz,
    required TResult Function() decode,
    required TResult Function() cancel,
    required TResult Function() tokenExpire,
    required TResult Function() noPermission,
  }) {
    return decode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseApiException exception)? api,
    TResult? Function(String message)? biz,
    TResult? Function()? decode,
    TResult? Function()? cancel,
    TResult? Function()? tokenExpire,
    TResult? Function()? noPermission,
  }) {
    return decode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseApiException exception)? api,
    TResult Function(String message)? biz,
    TResult Function()? decode,
    TResult Function()? cancel,
    TResult Function()? tokenExpire,
    TResult Function()? noPermission,
    required TResult orElse(),
  }) {
    if (decode != null) {
      return decode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiError value) api,
    required TResult Function(BizError value) biz,
    required TResult Function(DecodeError value) decode,
    required TResult Function(RequestCancelError value) cancel,
    required TResult Function(TokenExpireError value) tokenExpire,
    required TResult Function(NoPermissionError value) noPermission,
  }) {
    return decode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiError value)? api,
    TResult? Function(BizError value)? biz,
    TResult? Function(DecodeError value)? decode,
    TResult? Function(RequestCancelError value)? cancel,
    TResult? Function(TokenExpireError value)? tokenExpire,
    TResult? Function(NoPermissionError value)? noPermission,
  }) {
    return decode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiError value)? api,
    TResult Function(BizError value)? biz,
    TResult Function(DecodeError value)? decode,
    TResult Function(RequestCancelError value)? cancel,
    TResult Function(TokenExpireError value)? tokenExpire,
    TResult Function(NoPermissionError value)? noPermission,
    required TResult orElse(),
  }) {
    if (decode != null) {
      return decode(this);
    }
    return orElse();
  }
}

abstract class DecodeError extends GlobalError {
  factory DecodeError() = _$DecodeErrorImpl;
  DecodeError._() : super._();
}

/// @nodoc
abstract class _$$RequestCancelErrorImplCopyWith<$Res> {
  factory _$$RequestCancelErrorImplCopyWith(_$RequestCancelErrorImpl value,
          $Res Function(_$RequestCancelErrorImpl) then) =
      __$$RequestCancelErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestCancelErrorImplCopyWithImpl<$Res>
    extends _$GlobalErrorCopyWithImpl<$Res, _$RequestCancelErrorImpl>
    implements _$$RequestCancelErrorImplCopyWith<$Res> {
  __$$RequestCancelErrorImplCopyWithImpl(_$RequestCancelErrorImpl _value,
      $Res Function(_$RequestCancelErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestCancelErrorImpl extends RequestCancelError {
  _$RequestCancelErrorImpl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestCancelErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseApiException exception) api,
    required TResult Function(String message) biz,
    required TResult Function() decode,
    required TResult Function() cancel,
    required TResult Function() tokenExpire,
    required TResult Function() noPermission,
  }) {
    return cancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseApiException exception)? api,
    TResult? Function(String message)? biz,
    TResult? Function()? decode,
    TResult? Function()? cancel,
    TResult? Function()? tokenExpire,
    TResult? Function()? noPermission,
  }) {
    return cancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseApiException exception)? api,
    TResult Function(String message)? biz,
    TResult Function()? decode,
    TResult Function()? cancel,
    TResult Function()? tokenExpire,
    TResult Function()? noPermission,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiError value) api,
    required TResult Function(BizError value) biz,
    required TResult Function(DecodeError value) decode,
    required TResult Function(RequestCancelError value) cancel,
    required TResult Function(TokenExpireError value) tokenExpire,
    required TResult Function(NoPermissionError value) noPermission,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiError value)? api,
    TResult? Function(BizError value)? biz,
    TResult? Function(DecodeError value)? decode,
    TResult? Function(RequestCancelError value)? cancel,
    TResult? Function(TokenExpireError value)? tokenExpire,
    TResult? Function(NoPermissionError value)? noPermission,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiError value)? api,
    TResult Function(BizError value)? biz,
    TResult Function(DecodeError value)? decode,
    TResult Function(RequestCancelError value)? cancel,
    TResult Function(TokenExpireError value)? tokenExpire,
    TResult Function(NoPermissionError value)? noPermission,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class RequestCancelError extends GlobalError {
  factory RequestCancelError() = _$RequestCancelErrorImpl;
  RequestCancelError._() : super._();
}

/// @nodoc
abstract class _$$TokenExpireErrorImplCopyWith<$Res> {
  factory _$$TokenExpireErrorImplCopyWith(_$TokenExpireErrorImpl value,
          $Res Function(_$TokenExpireErrorImpl) then) =
      __$$TokenExpireErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TokenExpireErrorImplCopyWithImpl<$Res>
    extends _$GlobalErrorCopyWithImpl<$Res, _$TokenExpireErrorImpl>
    implements _$$TokenExpireErrorImplCopyWith<$Res> {
  __$$TokenExpireErrorImplCopyWithImpl(_$TokenExpireErrorImpl _value,
      $Res Function(_$TokenExpireErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TokenExpireErrorImpl extends TokenExpireError {
  _$TokenExpireErrorImpl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TokenExpireErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseApiException exception) api,
    required TResult Function(String message) biz,
    required TResult Function() decode,
    required TResult Function() cancel,
    required TResult Function() tokenExpire,
    required TResult Function() noPermission,
  }) {
    return tokenExpire();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseApiException exception)? api,
    TResult? Function(String message)? biz,
    TResult? Function()? decode,
    TResult? Function()? cancel,
    TResult? Function()? tokenExpire,
    TResult? Function()? noPermission,
  }) {
    return tokenExpire?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseApiException exception)? api,
    TResult Function(String message)? biz,
    TResult Function()? decode,
    TResult Function()? cancel,
    TResult Function()? tokenExpire,
    TResult Function()? noPermission,
    required TResult orElse(),
  }) {
    if (tokenExpire != null) {
      return tokenExpire();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiError value) api,
    required TResult Function(BizError value) biz,
    required TResult Function(DecodeError value) decode,
    required TResult Function(RequestCancelError value) cancel,
    required TResult Function(TokenExpireError value) tokenExpire,
    required TResult Function(NoPermissionError value) noPermission,
  }) {
    return tokenExpire(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiError value)? api,
    TResult? Function(BizError value)? biz,
    TResult? Function(DecodeError value)? decode,
    TResult? Function(RequestCancelError value)? cancel,
    TResult? Function(TokenExpireError value)? tokenExpire,
    TResult? Function(NoPermissionError value)? noPermission,
  }) {
    return tokenExpire?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiError value)? api,
    TResult Function(BizError value)? biz,
    TResult Function(DecodeError value)? decode,
    TResult Function(RequestCancelError value)? cancel,
    TResult Function(TokenExpireError value)? tokenExpire,
    TResult Function(NoPermissionError value)? noPermission,
    required TResult orElse(),
  }) {
    if (tokenExpire != null) {
      return tokenExpire(this);
    }
    return orElse();
  }
}

abstract class TokenExpireError extends GlobalError {
  factory TokenExpireError() = _$TokenExpireErrorImpl;
  TokenExpireError._() : super._();
}

/// @nodoc
abstract class _$$NoPermissionErrorImplCopyWith<$Res> {
  factory _$$NoPermissionErrorImplCopyWith(_$NoPermissionErrorImpl value,
          $Res Function(_$NoPermissionErrorImpl) then) =
      __$$NoPermissionErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoPermissionErrorImplCopyWithImpl<$Res>
    extends _$GlobalErrorCopyWithImpl<$Res, _$NoPermissionErrorImpl>
    implements _$$NoPermissionErrorImplCopyWith<$Res> {
  __$$NoPermissionErrorImplCopyWithImpl(_$NoPermissionErrorImpl _value,
      $Res Function(_$NoPermissionErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoPermissionErrorImpl extends NoPermissionError {
  _$NoPermissionErrorImpl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoPermissionErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseApiException exception) api,
    required TResult Function(String message) biz,
    required TResult Function() decode,
    required TResult Function() cancel,
    required TResult Function() tokenExpire,
    required TResult Function() noPermission,
  }) {
    return noPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BaseApiException exception)? api,
    TResult? Function(String message)? biz,
    TResult? Function()? decode,
    TResult? Function()? cancel,
    TResult? Function()? tokenExpire,
    TResult? Function()? noPermission,
  }) {
    return noPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseApiException exception)? api,
    TResult Function(String message)? biz,
    TResult Function()? decode,
    TResult Function()? cancel,
    TResult Function()? tokenExpire,
    TResult Function()? noPermission,
    required TResult orElse(),
  }) {
    if (noPermission != null) {
      return noPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiError value) api,
    required TResult Function(BizError value) biz,
    required TResult Function(DecodeError value) decode,
    required TResult Function(RequestCancelError value) cancel,
    required TResult Function(TokenExpireError value) tokenExpire,
    required TResult Function(NoPermissionError value) noPermission,
  }) {
    return noPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiError value)? api,
    TResult? Function(BizError value)? biz,
    TResult? Function(DecodeError value)? decode,
    TResult? Function(RequestCancelError value)? cancel,
    TResult? Function(TokenExpireError value)? tokenExpire,
    TResult? Function(NoPermissionError value)? noPermission,
  }) {
    return noPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiError value)? api,
    TResult Function(BizError value)? biz,
    TResult Function(DecodeError value)? decode,
    TResult Function(RequestCancelError value)? cancel,
    TResult Function(TokenExpireError value)? tokenExpire,
    TResult Function(NoPermissionError value)? noPermission,
    required TResult orElse(),
  }) {
    if (noPermission != null) {
      return noPermission(this);
    }
    return orElse();
  }
}

abstract class NoPermissionError extends GlobalError {
  factory NoPermissionError() = _$NoPermissionErrorImpl;
  NoPermissionError._() : super._();
}
