// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fs_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FsSearchResult _$FsSearchResultFromJson(Map<String, dynamic> json) {
  return _FsSearchResult.fromJson(json);
}

/// @nodoc
mixin _$FsSearchResult {
  @JsonKey(name: 'content')
  List<SearchContent> get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FsSearchResultCopyWith<FsSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FsSearchResultCopyWith<$Res> {
  factory $FsSearchResultCopyWith(
          FsSearchResult value, $Res Function(FsSearchResult) then) =
      _$FsSearchResultCopyWithImpl<$Res, FsSearchResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') List<SearchContent> content,
      @JsonKey(name: 'total') int total});
}

/// @nodoc
class _$FsSearchResultCopyWithImpl<$Res, $Val extends FsSearchResult>
    implements $FsSearchResultCopyWith<$Res> {
  _$FsSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<SearchContent>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FsSearchResultImplCopyWith<$Res>
    implements $FsSearchResultCopyWith<$Res> {
  factory _$$FsSearchResultImplCopyWith(_$FsSearchResultImpl value,
          $Res Function(_$FsSearchResultImpl) then) =
      __$$FsSearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') List<SearchContent> content,
      @JsonKey(name: 'total') int total});
}

/// @nodoc
class __$$FsSearchResultImplCopyWithImpl<$Res>
    extends _$FsSearchResultCopyWithImpl<$Res, _$FsSearchResultImpl>
    implements _$$FsSearchResultImplCopyWith<$Res> {
  __$$FsSearchResultImplCopyWithImpl(
      _$FsSearchResultImpl _value, $Res Function(_$FsSearchResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? total = null,
  }) {
    return _then(_$FsSearchResultImpl(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<SearchContent>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FsSearchResultImpl extends _FsSearchResult {
  const _$FsSearchResultImpl(
      {@JsonKey(name: 'content') final List<SearchContent> content = const [],
      @JsonKey(name: 'total') this.total = 0})
      : _content = content,
        super._();

  factory _$FsSearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$FsSearchResultImplFromJson(json);

  final List<SearchContent> _content;
  @override
  @JsonKey(name: 'content')
  List<SearchContent> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  @JsonKey(name: 'total')
  final int total;

  @override
  String toString() {
    return 'FsSearchResult(content: $content, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FsSearchResultImpl &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_content), total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FsSearchResultImplCopyWith<_$FsSearchResultImpl> get copyWith =>
      __$$FsSearchResultImplCopyWithImpl<_$FsSearchResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FsSearchResultImplToJson(
      this,
    );
  }
}

abstract class _FsSearchResult extends FsSearchResult {
  const factory _FsSearchResult(
      {@JsonKey(name: 'content') final List<SearchContent> content,
      @JsonKey(name: 'total') final int total}) = _$FsSearchResultImpl;
  const _FsSearchResult._() : super._();

  factory _FsSearchResult.fromJson(Map<String, dynamic> json) =
      _$FsSearchResultImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  List<SearchContent> get content;
  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$FsSearchResultImplCopyWith<_$FsSearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchContent _$SearchContentFromJson(Map<String, dynamic> json) {
  return _SearchContent.fromJson(json);
}

/// @nodoc
mixin _$SearchContent {
  @JsonKey(name: 'parent')
  String get parent => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_dir')
  bool get isDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  int get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchContentCopyWith<SearchContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchContentCopyWith<$Res> {
  factory $SearchContentCopyWith(
          SearchContent value, $Res Function(SearchContent) then) =
      _$SearchContentCopyWithImpl<$Res, SearchContent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'parent') String parent,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'is_dir') bool isDir,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'type') int type});
}

/// @nodoc
class _$SearchContentCopyWithImpl<$Res, $Val extends SearchContent>
    implements $SearchContentCopyWith<$Res> {
  _$SearchContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = null,
    Object? name = null,
    Object? isDir = null,
    Object? size = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDir: null == isDir
          ? _value.isDir
          : isDir // ignore: cast_nullable_to_non_nullable
              as bool,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchContentImplCopyWith<$Res>
    implements $SearchContentCopyWith<$Res> {
  factory _$$SearchContentImplCopyWith(
          _$SearchContentImpl value, $Res Function(_$SearchContentImpl) then) =
      __$$SearchContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'parent') String parent,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'is_dir') bool isDir,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'type') int type});
}

/// @nodoc
class __$$SearchContentImplCopyWithImpl<$Res>
    extends _$SearchContentCopyWithImpl<$Res, _$SearchContentImpl>
    implements _$$SearchContentImplCopyWith<$Res> {
  __$$SearchContentImplCopyWithImpl(
      _$SearchContentImpl _value, $Res Function(_$SearchContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = null,
    Object? name = null,
    Object? isDir = null,
    Object? size = null,
    Object? type = null,
  }) {
    return _then(_$SearchContentImpl(
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDir: null == isDir
          ? _value.isDir
          : isDir // ignore: cast_nullable_to_non_nullable
              as bool,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchContentImpl extends _SearchContent {
  const _$SearchContentImpl(
      {@JsonKey(name: 'parent') this.parent = '',
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'is_dir') this.isDir = false,
      @JsonKey(name: 'size') this.size = 0,
      @JsonKey(name: 'type') this.type = 0})
      : super._();

  factory _$SearchContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchContentImplFromJson(json);

  @override
  @JsonKey(name: 'parent')
  final String parent;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'is_dir')
  final bool isDir;
  @override
  @JsonKey(name: 'size')
  final int size;
  @override
  @JsonKey(name: 'type')
  final int type;

  @override
  String toString() {
    return 'SearchContent(parent: $parent, name: $name, isDir: $isDir, size: $size, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchContentImpl &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isDir, isDir) || other.isDir == isDir) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parent, name, isDir, size, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchContentImplCopyWith<_$SearchContentImpl> get copyWith =>
      __$$SearchContentImplCopyWithImpl<_$SearchContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchContentImplToJson(
      this,
    );
  }
}

abstract class _SearchContent extends SearchContent {
  const factory _SearchContent(
      {@JsonKey(name: 'parent') final String parent,
      @JsonKey(name: 'name') final String name,
      @JsonKey(name: 'is_dir') final bool isDir,
      @JsonKey(name: 'size') final int size,
      @JsonKey(name: 'type') final int type}) = _$SearchContentImpl;
  const _SearchContent._() : super._();

  factory _SearchContent.fromJson(Map<String, dynamic> json) =
      _$SearchContentImpl.fromJson;

  @override
  @JsonKey(name: 'parent')
  String get parent;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'is_dir')
  bool get isDir;
  @override
  @JsonKey(name: 'size')
  int get size;
  @override
  @JsonKey(name: 'type')
  int get type;
  @override
  @JsonKey(ignore: true)
  _$$SearchContentImplCopyWith<_$SearchContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
