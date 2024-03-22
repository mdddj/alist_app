// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MenuState {
  @JsonKey(name: 'leftMenuExpand')
  bool get leftMenuExpand => throw _privateConstructorUsedError; //在面板中的全局未知
  @igFromJsonAndToJson
  Offset get pointOffset => throw _privateConstructorUsedError;
  @igFromJsonAndToJson
  Offset get buttonOffset => throw _privateConstructorUsedError;
  @igFreezedJson
  GlobalKey<ScaffoldState> get indexScrollAppbarKey =>
      throw _privateConstructorUsedError;
  @igFromJsonAndToJson
  BuildContext? get context => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuStateCopyWith<MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res, MenuState>;
  @useResult
  $Res call(
      {@JsonKey(name: 'leftMenuExpand') bool leftMenuExpand,
      @igFromJsonAndToJson Offset pointOffset,
      @igFromJsonAndToJson Offset buttonOffset,
      @igFreezedJson GlobalKey<ScaffoldState> indexScrollAppbarKey,
      @igFromJsonAndToJson BuildContext? context});
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res, $Val extends MenuState>
    implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftMenuExpand = null,
    Object? pointOffset = null,
    Object? buttonOffset = null,
    Object? indexScrollAppbarKey = null,
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      leftMenuExpand: null == leftMenuExpand
          ? _value.leftMenuExpand
          : leftMenuExpand // ignore: cast_nullable_to_non_nullable
              as bool,
      pointOffset: null == pointOffset
          ? _value.pointOffset
          : pointOffset // ignore: cast_nullable_to_non_nullable
              as Offset,
      buttonOffset: null == buttonOffset
          ? _value.buttonOffset
          : buttonOffset // ignore: cast_nullable_to_non_nullable
              as Offset,
      indexScrollAppbarKey: null == indexScrollAppbarKey
          ? _value.indexScrollAppbarKey
          : indexScrollAppbarKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuStateImplCopyWith<$Res>
    implements $MenuStateCopyWith<$Res> {
  factory _$$MenuStateImplCopyWith(
          _$MenuStateImpl value, $Res Function(_$MenuStateImpl) then) =
      __$$MenuStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'leftMenuExpand') bool leftMenuExpand,
      @igFromJsonAndToJson Offset pointOffset,
      @igFromJsonAndToJson Offset buttonOffset,
      @igFreezedJson GlobalKey<ScaffoldState> indexScrollAppbarKey,
      @igFromJsonAndToJson BuildContext? context});
}

/// @nodoc
class __$$MenuStateImplCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$MenuStateImpl>
    implements _$$MenuStateImplCopyWith<$Res> {
  __$$MenuStateImplCopyWithImpl(
      _$MenuStateImpl _value, $Res Function(_$MenuStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftMenuExpand = null,
    Object? pointOffset = null,
    Object? buttonOffset = null,
    Object? indexScrollAppbarKey = null,
    Object? context = freezed,
  }) {
    return _then(_$MenuStateImpl(
      leftMenuExpand: null == leftMenuExpand
          ? _value.leftMenuExpand
          : leftMenuExpand // ignore: cast_nullable_to_non_nullable
              as bool,
      pointOffset: null == pointOffset
          ? _value.pointOffset
          : pointOffset // ignore: cast_nullable_to_non_nullable
              as Offset,
      buttonOffset: null == buttonOffset
          ? _value.buttonOffset
          : buttonOffset // ignore: cast_nullable_to_non_nullable
              as Offset,
      indexScrollAppbarKey: null == indexScrollAppbarKey
          ? _value.indexScrollAppbarKey
          : indexScrollAppbarKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
    ));
  }
}

/// @nodoc

class _$MenuStateImpl extends _MenuState {
  const _$MenuStateImpl(
      {@JsonKey(name: 'leftMenuExpand') this.leftMenuExpand = false,
      @igFromJsonAndToJson this.pointOffset = Offset.zero,
      @igFromJsonAndToJson this.buttonOffset = Offset.zero,
      @igFreezedJson required this.indexScrollAppbarKey,
      @igFromJsonAndToJson this.context})
      : super._();

  @override
  @JsonKey(name: 'leftMenuExpand')
  final bool leftMenuExpand;
//在面板中的全局未知
  @override
  @igFromJsonAndToJson
  final Offset pointOffset;
  @override
  @igFromJsonAndToJson
  final Offset buttonOffset;
  @override
  @igFreezedJson
  final GlobalKey<ScaffoldState> indexScrollAppbarKey;
  @override
  @igFromJsonAndToJson
  final BuildContext? context;

  @override
  String toString() {
    return 'MenuState(leftMenuExpand: $leftMenuExpand, pointOffset: $pointOffset, buttonOffset: $buttonOffset, indexScrollAppbarKey: $indexScrollAppbarKey, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuStateImpl &&
            (identical(other.leftMenuExpand, leftMenuExpand) ||
                other.leftMenuExpand == leftMenuExpand) &&
            (identical(other.pointOffset, pointOffset) ||
                other.pointOffset == pointOffset) &&
            (identical(other.buttonOffset, buttonOffset) ||
                other.buttonOffset == buttonOffset) &&
            (identical(other.indexScrollAppbarKey, indexScrollAppbarKey) ||
                other.indexScrollAppbarKey == indexScrollAppbarKey) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, leftMenuExpand, pointOffset,
      buttonOffset, indexScrollAppbarKey, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuStateImplCopyWith<_$MenuStateImpl> get copyWith =>
      __$$MenuStateImplCopyWithImpl<_$MenuStateImpl>(this, _$identity);
}

abstract class _MenuState extends MenuState {
  const factory _MenuState(
      {@JsonKey(name: 'leftMenuExpand') final bool leftMenuExpand,
      @igFromJsonAndToJson final Offset pointOffset,
      @igFromJsonAndToJson final Offset buttonOffset,
      @igFreezedJson
      required final GlobalKey<ScaffoldState> indexScrollAppbarKey,
      @igFromJsonAndToJson final BuildContext? context}) = _$MenuStateImpl;
  const _MenuState._() : super._();

  @override
  @JsonKey(name: 'leftMenuExpand')
  bool get leftMenuExpand;
  @override //在面板中的全局未知
  @igFromJsonAndToJson
  Offset get pointOffset;
  @override
  @igFromJsonAndToJson
  Offset get buttonOffset;
  @override
  @igFreezedJson
  GlobalKey<ScaffoldState> get indexScrollAppbarKey;
  @override
  @igFromJsonAndToJson
  BuildContext? get context;
  @override
  @JsonKey(ignore: true)
  _$$MenuStateImplCopyWith<_$MenuStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
