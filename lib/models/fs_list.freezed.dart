// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fs_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FsListParam _$FsListParamFromJson(Map<String, dynamic> json) {
  return _FsListParam.fromJson(json);
}

/// @nodoc
mixin _$FsListParam {
  @JsonKey(name: 'path')
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh')
  bool get refresh => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FsListParamCopyWith<FsListParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FsListParamCopyWith<$Res> {
  factory $FsListParamCopyWith(
          FsListParam value, $Res Function(FsListParam) then) =
      _$FsListParamCopyWithImpl<$Res, FsListParam>;
  @useResult
  $Res call(
      {@JsonKey(name: 'path') String path,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'page') int? page,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'refresh') bool refresh});
}

/// @nodoc
class _$FsListParamCopyWithImpl<$Res, $Val extends FsListParam>
    implements $FsListParamCopyWith<$Res> {
  _$FsListParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? password = null,
    Object? page = freezed,
    Object? perPage = freezed,
    Object? refresh = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FsListParamImplCopyWith<$Res>
    implements $FsListParamCopyWith<$Res> {
  factory _$$FsListParamImplCopyWith(
          _$FsListParamImpl value, $Res Function(_$FsListParamImpl) then) =
      __$$FsListParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'path') String path,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'page') int? page,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'refresh') bool refresh});
}

/// @nodoc
class __$$FsListParamImplCopyWithImpl<$Res>
    extends _$FsListParamCopyWithImpl<$Res, _$FsListParamImpl>
    implements _$$FsListParamImplCopyWith<$Res> {
  __$$FsListParamImplCopyWithImpl(
      _$FsListParamImpl _value, $Res Function(_$FsListParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? password = null,
    Object? page = freezed,
    Object? perPage = freezed,
    Object? refresh = null,
  }) {
    return _then(_$FsListParamImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FsListParamImpl extends _FsListParam {
  const _$FsListParamImpl(
      {@JsonKey(name: 'path') this.path = '',
      @JsonKey(name: 'password') this.password = '',
      @JsonKey(name: 'page') this.page,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'refresh') this.refresh = false})
      : super._();

  factory _$FsListParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$FsListParamImplFromJson(json);

  @override
  @JsonKey(name: 'path')
  final String path;
  @override
  @JsonKey(name: 'password')
  final String password;
  @override
  @JsonKey(name: 'page')
  final int? page;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'refresh')
  final bool refresh;

  @override
  String toString() {
    return 'FsListParam(path: $path, password: $password, page: $page, perPage: $perPage, refresh: $refresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FsListParamImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, path, password, page, perPage, refresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FsListParamImplCopyWith<_$FsListParamImpl> get copyWith =>
      __$$FsListParamImplCopyWithImpl<_$FsListParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FsListParamImplToJson(
      this,
    );
  }
}

abstract class _FsListParam extends FsListParam {
  const factory _FsListParam(
      {@JsonKey(name: 'path') final String path,
      @JsonKey(name: 'password') final String password,
      @JsonKey(name: 'page') final int? page,
      @JsonKey(name: 'per_page') final int? perPage,
      @JsonKey(name: 'refresh') final bool refresh}) = _$FsListParamImpl;
  const _FsListParam._() : super._();

  factory _FsListParam.fromJson(Map<String, dynamic> json) =
      _$FsListParamImpl.fromJson;

  @override
  @JsonKey(name: 'path')
  String get path;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(name: 'page')
  int? get page;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  @JsonKey(name: 'refresh')
  bool get refresh;
  @override
  @JsonKey(ignore: true)
  _$$FsListParamImplCopyWith<_$FsListParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FsListResult _$FsListResultFromJson(Map<String, dynamic> json) {
  return _FsListResult.fromJson(json);
}

/// @nodoc
mixin _$FsListResult {
  @JsonKey(name: 'content')
  IList<FsModel> get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'readme')
  String get readme => throw _privateConstructorUsedError;
  @JsonKey(name: 'write')
  bool get write => throw _privateConstructorUsedError;
  @JsonKey(name: 'provider')
  String get provider => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FsListResultCopyWith<FsListResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FsListResultCopyWith<$Res> {
  factory $FsListResultCopyWith(
          FsListResult value, $Res Function(FsListResult) then) =
      _$FsListResultCopyWithImpl<$Res, FsListResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') IList<FsModel> content,
      @JsonKey(name: 'total') int total,
      @JsonKey(name: 'readme') String readme,
      @JsonKey(name: 'write') bool write,
      @JsonKey(name: 'provider') String provider});
}

/// @nodoc
class _$FsListResultCopyWithImpl<$Res, $Val extends FsListResult>
    implements $FsListResultCopyWith<$Res> {
  _$FsListResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? total = null,
    Object? readme = null,
    Object? write = null,
    Object? provider = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as IList<FsModel>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      readme: null == readme
          ? _value.readme
          : readme // ignore: cast_nullable_to_non_nullable
              as String,
      write: null == write
          ? _value.write
          : write // ignore: cast_nullable_to_non_nullable
              as bool,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FsListResultImplCopyWith<$Res>
    implements $FsListResultCopyWith<$Res> {
  factory _$$FsListResultImplCopyWith(
          _$FsListResultImpl value, $Res Function(_$FsListResultImpl) then) =
      __$$FsListResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') IList<FsModel> content,
      @JsonKey(name: 'total') int total,
      @JsonKey(name: 'readme') String readme,
      @JsonKey(name: 'write') bool write,
      @JsonKey(name: 'provider') String provider});
}

/// @nodoc
class __$$FsListResultImplCopyWithImpl<$Res>
    extends _$FsListResultCopyWithImpl<$Res, _$FsListResultImpl>
    implements _$$FsListResultImplCopyWith<$Res> {
  __$$FsListResultImplCopyWithImpl(
      _$FsListResultImpl _value, $Res Function(_$FsListResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? total = null,
    Object? readme = null,
    Object? write = null,
    Object? provider = null,
  }) {
    return _then(_$FsListResultImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as IList<FsModel>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      readme: null == readme
          ? _value.readme
          : readme // ignore: cast_nullable_to_non_nullable
              as String,
      write: null == write
          ? _value.write
          : write // ignore: cast_nullable_to_non_nullable
              as bool,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FsListResultImpl extends _FsListResult {
  const _$FsListResultImpl(
      {@JsonKey(name: 'content') this.content = const IListConst([]),
      @JsonKey(name: 'total') this.total = 0,
      @JsonKey(name: 'readme') this.readme = '',
      @JsonKey(name: 'write') this.write = false,
      @JsonKey(name: 'provider') this.provider = ''})
      : super._();

  factory _$FsListResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$FsListResultImplFromJson(json);

  @override
  @JsonKey(name: 'content')
  final IList<FsModel> content;
  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'readme')
  final String readme;
  @override
  @JsonKey(name: 'write')
  final bool write;
  @override
  @JsonKey(name: 'provider')
  final String provider;

  @override
  String toString() {
    return 'FsListResult(content: $content, total: $total, readme: $readme, write: $write, provider: $provider)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FsListResultImpl &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.readme, readme) || other.readme == readme) &&
            (identical(other.write, write) || other.write == write) &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      total,
      readme,
      write,
      provider);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FsListResultImplCopyWith<_$FsListResultImpl> get copyWith =>
      __$$FsListResultImplCopyWithImpl<_$FsListResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FsListResultImplToJson(
      this,
    );
  }
}

abstract class _FsListResult extends FsListResult {
  const factory _FsListResult(
      {@JsonKey(name: 'content') final IList<FsModel> content,
      @JsonKey(name: 'total') final int total,
      @JsonKey(name: 'readme') final String readme,
      @JsonKey(name: 'write') final bool write,
      @JsonKey(name: 'provider') final String provider}) = _$FsListResultImpl;
  const _FsListResult._() : super._();

  factory _FsListResult.fromJson(Map<String, dynamic> json) =
      _$FsListResultImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  IList<FsModel> get content;
  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'readme')
  String get readme;
  @override
  @JsonKey(name: 'write')
  bool get write;
  @override
  @JsonKey(name: 'provider')
  String get provider;
  @override
  @JsonKey(ignore: true)
  _$$FsListResultImplCopyWith<_$FsListResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
