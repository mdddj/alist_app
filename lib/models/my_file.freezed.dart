// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FileHandleMenu {
  ///支持的文件
  List<FileType> get supports => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileHandleMenuCopyWith<FileHandleMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileHandleMenuCopyWith<$Res> {
  factory $FileHandleMenuCopyWith(
          FileHandleMenu value, $Res Function(FileHandleMenu) then) =
      _$FileHandleMenuCopyWithImpl<$Res, FileHandleMenu>;
  @useResult
  $Res call({List<FileType> supports, String title});
}

/// @nodoc
class _$FileHandleMenuCopyWithImpl<$Res, $Val extends FileHandleMenu>
    implements $FileHandleMenuCopyWith<$Res> {
  _$FileHandleMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supports = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      supports: null == supports
          ? _value.supports
          : supports // ignore: cast_nullable_to_non_nullable
              as List<FileType>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileHandleMenuImplCopyWith<$Res>
    implements $FileHandleMenuCopyWith<$Res> {
  factory _$$FileHandleMenuImplCopyWith(_$FileHandleMenuImpl value,
          $Res Function(_$FileHandleMenuImpl) then) =
      __$$FileHandleMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FileType> supports, String title});
}

/// @nodoc
class __$$FileHandleMenuImplCopyWithImpl<$Res>
    extends _$FileHandleMenuCopyWithImpl<$Res, _$FileHandleMenuImpl>
    implements _$$FileHandleMenuImplCopyWith<$Res> {
  __$$FileHandleMenuImplCopyWithImpl(
      _$FileHandleMenuImpl _value, $Res Function(_$FileHandleMenuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supports = null,
    Object? title = null,
  }) {
    return _then(_$FileHandleMenuImpl(
      supports: null == supports
          ? _value._supports
          : supports // ignore: cast_nullable_to_non_nullable
              as List<FileType>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FileHandleMenuImpl implements _FileHandleMenu {
  const _$FileHandleMenuImpl(
      {required final List<FileType> supports, required this.title})
      : _supports = supports;

  ///支持的文件
  final List<FileType> _supports;

  ///支持的文件
  @override
  List<FileType> get supports {
    if (_supports is EqualUnmodifiableListView) return _supports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supports);
  }

  @override
  final String title;

  @override
  String toString() {
    return 'FileHandleMenu(supports: $supports, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileHandleMenuImpl &&
            const DeepCollectionEquality().equals(other._supports, _supports) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_supports), title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileHandleMenuImplCopyWith<_$FileHandleMenuImpl> get copyWith =>
      __$$FileHandleMenuImplCopyWithImpl<_$FileHandleMenuImpl>(
          this, _$identity);
}

abstract class _FileHandleMenu implements FileHandleMenu {
  const factory _FileHandleMenu(
      {required final List<FileType> supports,
      required final String title}) = _$FileHandleMenuImpl;

  @override

  ///支持的文件
  List<FileType> get supports;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$FileHandleMenuImplCopyWith<_$FileHandleMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
