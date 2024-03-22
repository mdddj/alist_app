// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fs_detail_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FsDetailInfo _$FsDetailInfoFromJson(Map<String, dynamic> json) {
  return _FsDetailInfo.fromJson(json);
}

/// @nodoc
mixin _$FsDetailInfo {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_dir')
  bool get isDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified')
  String get modified => throw _privateConstructorUsedError;
  @JsonKey(name: 'sign')
  String get sign => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumb')
  String get thumb => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'raw_url')
  String get rawUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'readme')
  String get readme => throw _privateConstructorUsedError;
  @JsonKey(name: 'provider')
  String get provider => throw _privateConstructorUsedError;
  @JsonKey(name: 'related', fromJson: toDartModel)
  @ignore
  DartTypeModel get related => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FsDetailInfoCopyWith<FsDetailInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FsDetailInfoCopyWith<$Res> {
  factory $FsDetailInfoCopyWith(
          FsDetailInfo value, $Res Function(FsDetailInfo) then) =
      _$FsDetailInfoCopyWithImpl<$Res, FsDetailInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'is_dir') bool isDir,
      @JsonKey(name: 'modified') String modified,
      @JsonKey(name: 'sign') String sign,
      @JsonKey(name: 'thumb') String thumb,
      @JsonKey(name: 'type') int type,
      @JsonKey(name: 'raw_url') String rawUrl,
      @JsonKey(name: 'readme') String readme,
      @JsonKey(name: 'provider') String provider,
      @JsonKey(name: 'related', fromJson: toDartModel)
      @ignore
      DartTypeModel related});

  $DartTypeModelCopyWith<$Res> get related;
}

/// @nodoc
class _$FsDetailInfoCopyWithImpl<$Res, $Val extends FsDetailInfo>
    implements $FsDetailInfoCopyWith<$Res> {
  _$FsDetailInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? size = null,
    Object? isDir = null,
    Object? modified = null,
    Object? sign = null,
    Object? thumb = null,
    Object? type = null,
    Object? rawUrl = null,
    Object? readme = null,
    Object? provider = null,
    Object? related = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      isDir: null == isDir
          ? _value.isDir
          : isDir // ignore: cast_nullable_to_non_nullable
              as bool,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String,
      sign: null == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      rawUrl: null == rawUrl
          ? _value.rawUrl
          : rawUrl // ignore: cast_nullable_to_non_nullable
              as String,
      readme: null == readme
          ? _value.readme
          : readme // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      related: null == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as DartTypeModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DartTypeModelCopyWith<$Res> get related {
    return $DartTypeModelCopyWith<$Res>(_value.related, (value) {
      return _then(_value.copyWith(related: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FsDetailInfoImplCopyWith<$Res>
    implements $FsDetailInfoCopyWith<$Res> {
  factory _$$FsDetailInfoImplCopyWith(
          _$FsDetailInfoImpl value, $Res Function(_$FsDetailInfoImpl) then) =
      __$$FsDetailInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'is_dir') bool isDir,
      @JsonKey(name: 'modified') String modified,
      @JsonKey(name: 'sign') String sign,
      @JsonKey(name: 'thumb') String thumb,
      @JsonKey(name: 'type') int type,
      @JsonKey(name: 'raw_url') String rawUrl,
      @JsonKey(name: 'readme') String readme,
      @JsonKey(name: 'provider') String provider,
      @JsonKey(name: 'related', fromJson: toDartModel)
      @ignore
      DartTypeModel related});

  @override
  $DartTypeModelCopyWith<$Res> get related;
}

/// @nodoc
class __$$FsDetailInfoImplCopyWithImpl<$Res>
    extends _$FsDetailInfoCopyWithImpl<$Res, _$FsDetailInfoImpl>
    implements _$$FsDetailInfoImplCopyWith<$Res> {
  __$$FsDetailInfoImplCopyWithImpl(
      _$FsDetailInfoImpl _value, $Res Function(_$FsDetailInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? size = null,
    Object? isDir = null,
    Object? modified = null,
    Object? sign = null,
    Object? thumb = null,
    Object? type = null,
    Object? rawUrl = null,
    Object? readme = null,
    Object? provider = null,
    Object? related = null,
  }) {
    return _then(_$FsDetailInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      isDir: null == isDir
          ? _value.isDir
          : isDir // ignore: cast_nullable_to_non_nullable
              as bool,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String,
      sign: null == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      rawUrl: null == rawUrl
          ? _value.rawUrl
          : rawUrl // ignore: cast_nullable_to_non_nullable
              as String,
      readme: null == readme
          ? _value.readme
          : readme // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      related: null == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as DartTypeModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FsDetailInfoImpl extends _FsDetailInfo {
  const _$FsDetailInfoImpl(
      {@JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'size') this.size = 0,
      @JsonKey(name: 'is_dir') this.isDir = false,
      @JsonKey(name: 'modified') this.modified = '',
      @JsonKey(name: 'sign') this.sign = '',
      @JsonKey(name: 'thumb') this.thumb = '',
      @JsonKey(name: 'type') this.type = 0,
      @JsonKey(name: 'raw_url') this.rawUrl = '',
      @JsonKey(name: 'readme') this.readme = '',
      @JsonKey(name: 'provider') this.provider = '',
      @JsonKey(name: 'related', fromJson: toDartModel)
      @ignore
      this.related = const DartTypeModel.nil()})
      : super._();

  factory _$FsDetailInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FsDetailInfoImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'size')
  final int size;
  @override
  @JsonKey(name: 'is_dir')
  final bool isDir;
  @override
  @JsonKey(name: 'modified')
  final String modified;
  @override
  @JsonKey(name: 'sign')
  final String sign;
  @override
  @JsonKey(name: 'thumb')
  final String thumb;
  @override
  @JsonKey(name: 'type')
  final int type;
  @override
  @JsonKey(name: 'raw_url')
  final String rawUrl;
  @override
  @JsonKey(name: 'readme')
  final String readme;
  @override
  @JsonKey(name: 'provider')
  final String provider;
  @override
  @JsonKey(name: 'related', fromJson: toDartModel)
  @ignore
  final DartTypeModel related;

  @override
  String toString() {
    return 'FsDetailInfo(name: $name, size: $size, isDir: $isDir, modified: $modified, sign: $sign, thumb: $thumb, type: $type, rawUrl: $rawUrl, readme: $readme, provider: $provider, related: $related)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FsDetailInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.isDir, isDir) || other.isDir == isDir) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.sign, sign) || other.sign == sign) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rawUrl, rawUrl) || other.rawUrl == rawUrl) &&
            (identical(other.readme, readme) || other.readme == readme) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.related, related) || other.related == related));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, size, isDir, modified,
      sign, thumb, type, rawUrl, readme, provider, related);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FsDetailInfoImplCopyWith<_$FsDetailInfoImpl> get copyWith =>
      __$$FsDetailInfoImplCopyWithImpl<_$FsDetailInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FsDetailInfoImplToJson(
      this,
    );
  }
}

abstract class _FsDetailInfo extends FsDetailInfo {
  const factory _FsDetailInfo(
      {@JsonKey(name: 'name') final String name,
      @JsonKey(name: 'size') final int size,
      @JsonKey(name: 'is_dir') final bool isDir,
      @JsonKey(name: 'modified') final String modified,
      @JsonKey(name: 'sign') final String sign,
      @JsonKey(name: 'thumb') final String thumb,
      @JsonKey(name: 'type') final int type,
      @JsonKey(name: 'raw_url') final String rawUrl,
      @JsonKey(name: 'readme') final String readme,
      @JsonKey(name: 'provider') final String provider,
      @JsonKey(name: 'related', fromJson: toDartModel)
      @ignore
      final DartTypeModel related}) = _$FsDetailInfoImpl;
  const _FsDetailInfo._() : super._();

  factory _FsDetailInfo.fromJson(Map<String, dynamic> json) =
      _$FsDetailInfoImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'size')
  int get size;
  @override
  @JsonKey(name: 'is_dir')
  bool get isDir;
  @override
  @JsonKey(name: 'modified')
  String get modified;
  @override
  @JsonKey(name: 'sign')
  String get sign;
  @override
  @JsonKey(name: 'thumb')
  String get thumb;
  @override
  @JsonKey(name: 'type')
  int get type;
  @override
  @JsonKey(name: 'raw_url')
  String get rawUrl;
  @override
  @JsonKey(name: 'readme')
  String get readme;
  @override
  @JsonKey(name: 'provider')
  String get provider;
  @override
  @JsonKey(name: 'related', fromJson: toDartModel)
  @ignore
  DartTypeModel get related;
  @override
  @JsonKey(ignore: true)
  _$$FsDetailInfoImplCopyWith<_$FsDetailInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
