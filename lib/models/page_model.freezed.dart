// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PageModel {
  bool get active => throw _privateConstructorUsedError;
  PageType get pageType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool active, String id, Widget? child,
            PageType pageType, @igFreezedJson BuildMenuIcon? render)
        main,
    required TResult Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)
        favorite,
    required TResult Function(bool active, Widget? child, String id,
            PageType pageType, @igFreezedJson BuildMenuIcon? render)
        upload,
    required TResult Function(FsModel model, bool active, PageType pageType)
        fsModel,
    required TResult Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)
        custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool active, String id, Widget? child, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        main,
    TResult? Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)?
        favorite,
    TResult? Function(bool active, Widget? child, String id, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        upload,
    TResult? Function(FsModel model, bool active, PageType pageType)? fsModel,
    TResult? Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)?
        custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool active, String id, Widget? child, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        main,
    TResult Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)?
        favorite,
    TResult Function(bool active, Widget? child, String id, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        upload,
    TResult Function(FsModel model, bool active, PageType pageType)? fsModel,
    TResult Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)?
        custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationMainPage value) main,
    required TResult Function(ApplicationFavoritePage value) favorite,
    required TResult Function(ApplicationUploadPage value) upload,
    required TResult Function(ApplicationFsModelPage value) fsModel,
    required TResult Function(ApplicationCustomPage value) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationMainPage value)? main,
    TResult? Function(ApplicationFavoritePage value)? favorite,
    TResult? Function(ApplicationUploadPage value)? upload,
    TResult? Function(ApplicationFsModelPage value)? fsModel,
    TResult? Function(ApplicationCustomPage value)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationMainPage value)? main,
    TResult Function(ApplicationFavoritePage value)? favorite,
    TResult Function(ApplicationUploadPage value)? upload,
    TResult Function(ApplicationFsModelPage value)? fsModel,
    TResult Function(ApplicationCustomPage value)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageModelCopyWith<PageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageModelCopyWith<$Res> {
  factory $PageModelCopyWith(PageModel value, $Res Function(PageModel) then) =
      _$PageModelCopyWithImpl<$Res, PageModel>;
  @useResult
  $Res call({bool active, PageType pageType});
}

/// @nodoc
class _$PageModelCopyWithImpl<$Res, $Val extends PageModel>
    implements $PageModelCopyWith<$Res> {
  _$PageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? pageType = null,
  }) {
    return _then(_value.copyWith(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      pageType: null == pageType
          ? _value.pageType
          : pageType // ignore: cast_nullable_to_non_nullable
              as PageType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplicationMainPageImplCopyWith<$Res>
    implements $PageModelCopyWith<$Res> {
  factory _$$ApplicationMainPageImplCopyWith(_$ApplicationMainPageImpl value,
          $Res Function(_$ApplicationMainPageImpl) then) =
      __$$ApplicationMainPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool active,
      String id,
      Widget? child,
      PageType pageType,
      @igFreezedJson BuildMenuIcon? render});
}

/// @nodoc
class __$$ApplicationMainPageImplCopyWithImpl<$Res>
    extends _$PageModelCopyWithImpl<$Res, _$ApplicationMainPageImpl>
    implements _$$ApplicationMainPageImplCopyWith<$Res> {
  __$$ApplicationMainPageImplCopyWithImpl(_$ApplicationMainPageImpl _value,
      $Res Function(_$ApplicationMainPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? id = null,
    Object? child = freezed,
    Object? pageType = null,
    Object? render = freezed,
  }) {
    return _then(_$ApplicationMainPageImpl(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Widget?,
      pageType: null == pageType
          ? _value.pageType
          : pageType // ignore: cast_nullable_to_non_nullable
              as PageType,
      render: freezed == render
          ? _value.render
          : render // ignore: cast_nullable_to_non_nullable
              as BuildMenuIcon?,
    ));
  }
}

/// @nodoc

class _$ApplicationMainPageImpl extends ApplicationMainPage {
  _$ApplicationMainPageImpl(
      {this.active = true,
      this.id = 'main',
      this.child,
      this.pageType = PageType.def,
      @igFreezedJson this.render})
      : super._();

  @override
  @JsonKey()
  final bool active;
  @override
  @JsonKey()
  final String id;
  @override
  final Widget? child;
  @override
  @JsonKey()
  final PageType pageType;
  @override
  @igFreezedJson
  final BuildMenuIcon? render;

  @override
  String toString() {
    return 'PageModel.main(active: $active, id: $id, child: $child, pageType: $pageType, render: $render)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationMainPageImpl &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.pageType, pageType) ||
                other.pageType == pageType) &&
            (identical(other.render, render) || other.render == render));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, active, id, child, pageType, render);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationMainPageImplCopyWith<_$ApplicationMainPageImpl> get copyWith =>
      __$$ApplicationMainPageImplCopyWithImpl<_$ApplicationMainPageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool active, String id, Widget? child,
            PageType pageType, @igFreezedJson BuildMenuIcon? render)
        main,
    required TResult Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)
        favorite,
    required TResult Function(bool active, Widget? child, String id,
            PageType pageType, @igFreezedJson BuildMenuIcon? render)
        upload,
    required TResult Function(FsModel model, bool active, PageType pageType)
        fsModel,
    required TResult Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)
        custom,
  }) {
    return main(active, id, child, pageType, render);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool active, String id, Widget? child, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        main,
    TResult? Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)?
        favorite,
    TResult? Function(bool active, Widget? child, String id, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        upload,
    TResult? Function(FsModel model, bool active, PageType pageType)? fsModel,
    TResult? Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)?
        custom,
  }) {
    return main?.call(active, id, child, pageType, render);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool active, String id, Widget? child, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        main,
    TResult Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)?
        favorite,
    TResult Function(bool active, Widget? child, String id, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        upload,
    TResult Function(FsModel model, bool active, PageType pageType)? fsModel,
    TResult Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)?
        custom,
    required TResult orElse(),
  }) {
    if (main != null) {
      return main(active, id, child, pageType, render);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationMainPage value) main,
    required TResult Function(ApplicationFavoritePage value) favorite,
    required TResult Function(ApplicationUploadPage value) upload,
    required TResult Function(ApplicationFsModelPage value) fsModel,
    required TResult Function(ApplicationCustomPage value) custom,
  }) {
    return main(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationMainPage value)? main,
    TResult? Function(ApplicationFavoritePage value)? favorite,
    TResult? Function(ApplicationUploadPage value)? upload,
    TResult? Function(ApplicationFsModelPage value)? fsModel,
    TResult? Function(ApplicationCustomPage value)? custom,
  }) {
    return main?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationMainPage value)? main,
    TResult Function(ApplicationFavoritePage value)? favorite,
    TResult Function(ApplicationUploadPage value)? upload,
    TResult Function(ApplicationFsModelPage value)? fsModel,
    TResult Function(ApplicationCustomPage value)? custom,
    required TResult orElse(),
  }) {
    if (main != null) {
      return main(this);
    }
    return orElse();
  }
}

abstract class ApplicationMainPage extends PageModel {
  factory ApplicationMainPage(
      {final bool active,
      final String id,
      final Widget? child,
      final PageType pageType,
      @igFreezedJson final BuildMenuIcon? render}) = _$ApplicationMainPageImpl;
  ApplicationMainPage._() : super._();

  @override
  bool get active;
  String get id;
  Widget? get child;
  @override
  PageType get pageType;
  @igFreezedJson
  BuildMenuIcon? get render;
  @override
  @JsonKey(ignore: true)
  _$$ApplicationMainPageImplCopyWith<_$ApplicationMainPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplicationFavoritePageImplCopyWith<$Res>
    implements $PageModelCopyWith<$Res> {
  factory _$$ApplicationFavoritePageImplCopyWith(
          _$ApplicationFavoritePageImpl value,
          $Res Function(_$ApplicationFavoritePageImpl) then) =
      __$$ApplicationFavoritePageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool active,
      String id,
      PageType pageType,
      @igFreezedJson Widget? child});
}

/// @nodoc
class __$$ApplicationFavoritePageImplCopyWithImpl<$Res>
    extends _$PageModelCopyWithImpl<$Res, _$ApplicationFavoritePageImpl>
    implements _$$ApplicationFavoritePageImplCopyWith<$Res> {
  __$$ApplicationFavoritePageImplCopyWithImpl(
      _$ApplicationFavoritePageImpl _value,
      $Res Function(_$ApplicationFavoritePageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? id = null,
    Object? pageType = null,
    Object? child = freezed,
  }) {
    return _then(_$ApplicationFavoritePageImpl(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pageType: null == pageType
          ? _value.pageType
          : pageType // ignore: cast_nullable_to_non_nullable
              as PageType,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$ApplicationFavoritePageImpl extends ApplicationFavoritePage {
  _$ApplicationFavoritePageImpl(
      {this.active = false,
      this.id = 'favorite',
      this.pageType = PageType.def,
      @igFreezedJson this.child})
      : super._();

  @override
  @JsonKey()
  final bool active;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final PageType pageType;
  @override
  @igFreezedJson
  final Widget? child;

  @override
  String toString() {
    return 'PageModel.favorite(active: $active, id: $id, pageType: $pageType, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationFavoritePageImpl &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pageType, pageType) ||
                other.pageType == pageType) &&
            (identical(other.child, child) || other.child == child));
  }

  @override
  int get hashCode => Object.hash(runtimeType, active, id, pageType, child);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationFavoritePageImplCopyWith<_$ApplicationFavoritePageImpl>
      get copyWith => __$$ApplicationFavoritePageImplCopyWithImpl<
          _$ApplicationFavoritePageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool active, String id, Widget? child,
            PageType pageType, @igFreezedJson BuildMenuIcon? render)
        main,
    required TResult Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)
        favorite,
    required TResult Function(bool active, Widget? child, String id,
            PageType pageType, @igFreezedJson BuildMenuIcon? render)
        upload,
    required TResult Function(FsModel model, bool active, PageType pageType)
        fsModel,
    required TResult Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)
        custom,
  }) {
    return favorite(active, id, pageType, child);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool active, String id, Widget? child, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        main,
    TResult? Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)?
        favorite,
    TResult? Function(bool active, Widget? child, String id, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        upload,
    TResult? Function(FsModel model, bool active, PageType pageType)? fsModel,
    TResult? Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)?
        custom,
  }) {
    return favorite?.call(active, id, pageType, child);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool active, String id, Widget? child, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        main,
    TResult Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)?
        favorite,
    TResult Function(bool active, Widget? child, String id, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        upload,
    TResult Function(FsModel model, bool active, PageType pageType)? fsModel,
    TResult Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)?
        custom,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(active, id, pageType, child);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationMainPage value) main,
    required TResult Function(ApplicationFavoritePage value) favorite,
    required TResult Function(ApplicationUploadPage value) upload,
    required TResult Function(ApplicationFsModelPage value) fsModel,
    required TResult Function(ApplicationCustomPage value) custom,
  }) {
    return favorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationMainPage value)? main,
    TResult? Function(ApplicationFavoritePage value)? favorite,
    TResult? Function(ApplicationUploadPage value)? upload,
    TResult? Function(ApplicationFsModelPage value)? fsModel,
    TResult? Function(ApplicationCustomPage value)? custom,
  }) {
    return favorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationMainPage value)? main,
    TResult Function(ApplicationFavoritePage value)? favorite,
    TResult Function(ApplicationUploadPage value)? upload,
    TResult Function(ApplicationFsModelPage value)? fsModel,
    TResult Function(ApplicationCustomPage value)? custom,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(this);
    }
    return orElse();
  }
}

abstract class ApplicationFavoritePage extends PageModel {
  factory ApplicationFavoritePage(
      {final bool active,
      final String id,
      final PageType pageType,
      @igFreezedJson final Widget? child}) = _$ApplicationFavoritePageImpl;
  ApplicationFavoritePage._() : super._();

  @override
  bool get active;
  String get id;
  @override
  PageType get pageType;
  @igFreezedJson
  Widget? get child;
  @override
  @JsonKey(ignore: true)
  _$$ApplicationFavoritePageImplCopyWith<_$ApplicationFavoritePageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplicationUploadPageImplCopyWith<$Res>
    implements $PageModelCopyWith<$Res> {
  factory _$$ApplicationUploadPageImplCopyWith(
          _$ApplicationUploadPageImpl value,
          $Res Function(_$ApplicationUploadPageImpl) then) =
      __$$ApplicationUploadPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool active,
      Widget? child,
      String id,
      PageType pageType,
      @igFreezedJson BuildMenuIcon? render});
}

/// @nodoc
class __$$ApplicationUploadPageImplCopyWithImpl<$Res>
    extends _$PageModelCopyWithImpl<$Res, _$ApplicationUploadPageImpl>
    implements _$$ApplicationUploadPageImplCopyWith<$Res> {
  __$$ApplicationUploadPageImplCopyWithImpl(_$ApplicationUploadPageImpl _value,
      $Res Function(_$ApplicationUploadPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? child = freezed,
    Object? id = null,
    Object? pageType = null,
    Object? render = freezed,
  }) {
    return _then(_$ApplicationUploadPageImpl(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Widget?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pageType: null == pageType
          ? _value.pageType
          : pageType // ignore: cast_nullable_to_non_nullable
              as PageType,
      render: freezed == render
          ? _value.render
          : render // ignore: cast_nullable_to_non_nullable
              as BuildMenuIcon?,
    ));
  }
}

/// @nodoc

class _$ApplicationUploadPageImpl extends ApplicationUploadPage {
  _$ApplicationUploadPageImpl(
      {this.active = false,
      this.child,
      this.id = 'upload',
      this.pageType = PageType.def,
      @igFreezedJson this.render})
      : super._();

  @override
  @JsonKey()
  final bool active;
  @override
  final Widget? child;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final PageType pageType;
  @override
  @igFreezedJson
  final BuildMenuIcon? render;

  @override
  String toString() {
    return 'PageModel.upload(active: $active, child: $child, id: $id, pageType: $pageType, render: $render)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationUploadPageImpl &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pageType, pageType) ||
                other.pageType == pageType) &&
            (identical(other.render, render) || other.render == render));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, active, child, id, pageType, render);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationUploadPageImplCopyWith<_$ApplicationUploadPageImpl>
      get copyWith => __$$ApplicationUploadPageImplCopyWithImpl<
          _$ApplicationUploadPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool active, String id, Widget? child,
            PageType pageType, @igFreezedJson BuildMenuIcon? render)
        main,
    required TResult Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)
        favorite,
    required TResult Function(bool active, Widget? child, String id,
            PageType pageType, @igFreezedJson BuildMenuIcon? render)
        upload,
    required TResult Function(FsModel model, bool active, PageType pageType)
        fsModel,
    required TResult Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)
        custom,
  }) {
    return upload(active, child, id, pageType, render);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool active, String id, Widget? child, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        main,
    TResult? Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)?
        favorite,
    TResult? Function(bool active, Widget? child, String id, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        upload,
    TResult? Function(FsModel model, bool active, PageType pageType)? fsModel,
    TResult? Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)?
        custom,
  }) {
    return upload?.call(active, child, id, pageType, render);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool active, String id, Widget? child, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        main,
    TResult Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)?
        favorite,
    TResult Function(bool active, Widget? child, String id, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        upload,
    TResult Function(FsModel model, bool active, PageType pageType)? fsModel,
    TResult Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)?
        custom,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(active, child, id, pageType, render);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationMainPage value) main,
    required TResult Function(ApplicationFavoritePage value) favorite,
    required TResult Function(ApplicationUploadPage value) upload,
    required TResult Function(ApplicationFsModelPage value) fsModel,
    required TResult Function(ApplicationCustomPage value) custom,
  }) {
    return upload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationMainPage value)? main,
    TResult? Function(ApplicationFavoritePage value)? favorite,
    TResult? Function(ApplicationUploadPage value)? upload,
    TResult? Function(ApplicationFsModelPage value)? fsModel,
    TResult? Function(ApplicationCustomPage value)? custom,
  }) {
    return upload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationMainPage value)? main,
    TResult Function(ApplicationFavoritePage value)? favorite,
    TResult Function(ApplicationUploadPage value)? upload,
    TResult Function(ApplicationFsModelPage value)? fsModel,
    TResult Function(ApplicationCustomPage value)? custom,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(this);
    }
    return orElse();
  }
}

abstract class ApplicationUploadPage extends PageModel {
  factory ApplicationUploadPage(
          {final bool active,
          final Widget? child,
          final String id,
          final PageType pageType,
          @igFreezedJson final BuildMenuIcon? render}) =
      _$ApplicationUploadPageImpl;
  ApplicationUploadPage._() : super._();

  @override
  bool get active;
  Widget? get child;
  String get id;
  @override
  PageType get pageType;
  @igFreezedJson
  BuildMenuIcon? get render;
  @override
  @JsonKey(ignore: true)
  _$$ApplicationUploadPageImplCopyWith<_$ApplicationUploadPageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplicationFsModelPageImplCopyWith<$Res>
    implements $PageModelCopyWith<$Res> {
  factory _$$ApplicationFsModelPageImplCopyWith(
          _$ApplicationFsModelPageImpl value,
          $Res Function(_$ApplicationFsModelPageImpl) then) =
      __$$ApplicationFsModelPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FsModel model, bool active, PageType pageType});
}

/// @nodoc
class __$$ApplicationFsModelPageImplCopyWithImpl<$Res>
    extends _$PageModelCopyWithImpl<$Res, _$ApplicationFsModelPageImpl>
    implements _$$ApplicationFsModelPageImplCopyWith<$Res> {
  __$$ApplicationFsModelPageImplCopyWithImpl(
      _$ApplicationFsModelPageImpl _value,
      $Res Function(_$ApplicationFsModelPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? active = null,
    Object? pageType = null,
  }) {
    return _then(_$ApplicationFsModelPageImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FsModel,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      pageType: null == pageType
          ? _value.pageType
          : pageType // ignore: cast_nullable_to_non_nullable
              as PageType,
    ));
  }
}

/// @nodoc

class _$ApplicationFsModelPageImpl extends ApplicationFsModelPage {
  _$ApplicationFsModelPageImpl(
      {required this.model,
      this.active = false,
      this.pageType = PageType.action})
      : super._();

  @override
  final FsModel model;
  @override
  @JsonKey()
  final bool active;
  @override
  @JsonKey()
  final PageType pageType;

  @override
  String toString() {
    return 'PageModel.fsModel(model: $model, active: $active, pageType: $pageType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationFsModelPageImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.pageType, pageType) ||
                other.pageType == pageType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, active, pageType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationFsModelPageImplCopyWith<_$ApplicationFsModelPageImpl>
      get copyWith => __$$ApplicationFsModelPageImplCopyWithImpl<
          _$ApplicationFsModelPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool active, String id, Widget? child,
            PageType pageType, @igFreezedJson BuildMenuIcon? render)
        main,
    required TResult Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)
        favorite,
    required TResult Function(bool active, Widget? child, String id,
            PageType pageType, @igFreezedJson BuildMenuIcon? render)
        upload,
    required TResult Function(FsModel model, bool active, PageType pageType)
        fsModel,
    required TResult Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)
        custom,
  }) {
    return fsModel(model, active, pageType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool active, String id, Widget? child, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        main,
    TResult? Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)?
        favorite,
    TResult? Function(bool active, Widget? child, String id, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        upload,
    TResult? Function(FsModel model, bool active, PageType pageType)? fsModel,
    TResult? Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)?
        custom,
  }) {
    return fsModel?.call(model, active, pageType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool active, String id, Widget? child, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        main,
    TResult Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)?
        favorite,
    TResult Function(bool active, Widget? child, String id, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        upload,
    TResult Function(FsModel model, bool active, PageType pageType)? fsModel,
    TResult Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)?
        custom,
    required TResult orElse(),
  }) {
    if (fsModel != null) {
      return fsModel(model, active, pageType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationMainPage value) main,
    required TResult Function(ApplicationFavoritePage value) favorite,
    required TResult Function(ApplicationUploadPage value) upload,
    required TResult Function(ApplicationFsModelPage value) fsModel,
    required TResult Function(ApplicationCustomPage value) custom,
  }) {
    return fsModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationMainPage value)? main,
    TResult? Function(ApplicationFavoritePage value)? favorite,
    TResult? Function(ApplicationUploadPage value)? upload,
    TResult? Function(ApplicationFsModelPage value)? fsModel,
    TResult? Function(ApplicationCustomPage value)? custom,
  }) {
    return fsModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationMainPage value)? main,
    TResult Function(ApplicationFavoritePage value)? favorite,
    TResult Function(ApplicationUploadPage value)? upload,
    TResult Function(ApplicationFsModelPage value)? fsModel,
    TResult Function(ApplicationCustomPage value)? custom,
    required TResult orElse(),
  }) {
    if (fsModel != null) {
      return fsModel(this);
    }
    return orElse();
  }
}

abstract class ApplicationFsModelPage extends PageModel {
  factory ApplicationFsModelPage(
      {required final FsModel model,
      final bool active,
      final PageType pageType}) = _$ApplicationFsModelPageImpl;
  ApplicationFsModelPage._() : super._();

  FsModel get model;
  @override
  bool get active;
  @override
  PageType get pageType;
  @override
  @JsonKey(ignore: true)
  _$$ApplicationFsModelPageImplCopyWith<_$ApplicationFsModelPageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplicationCustomPageImplCopyWith<$Res>
    implements $PageModelCopyWith<$Res> {
  factory _$$ApplicationCustomPageImplCopyWith(
          _$ApplicationCustomPageImpl value,
          $Res Function(_$ApplicationCustomPageImpl) then) =
      __$$ApplicationCustomPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      IconData icon,
      PageType pageType,
      Widget child,
      bool active,
      String id,
      BuilderEndingWidget? ending});
}

/// @nodoc
class __$$ApplicationCustomPageImplCopyWithImpl<$Res>
    extends _$PageModelCopyWithImpl<$Res, _$ApplicationCustomPageImpl>
    implements _$$ApplicationCustomPageImplCopyWith<$Res> {
  __$$ApplicationCustomPageImplCopyWithImpl(_$ApplicationCustomPageImpl _value,
      $Res Function(_$ApplicationCustomPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
    Object? pageType = null,
    Object? child = null,
    Object? active = null,
    Object? id = null,
    Object? ending = freezed,
  }) {
    return _then(_$ApplicationCustomPageImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      pageType: null == pageType
          ? _value.pageType
          : pageType // ignore: cast_nullable_to_non_nullable
              as PageType,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Widget,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ending: freezed == ending
          ? _value.ending
          : ending // ignore: cast_nullable_to_non_nullable
              as BuilderEndingWidget?,
    ));
  }
}

/// @nodoc

class _$ApplicationCustomPageImpl extends ApplicationCustomPage {
  _$ApplicationCustomPageImpl(
      {required this.title,
      required this.icon,
      required this.pageType,
      required this.child,
      this.active = false,
      this.id = 'custom',
      this.ending})
      : super._();

  @override
  final String title;
  @override
  final IconData icon;
  @override
  final PageType pageType;
  @override
  final Widget child;
  @override
  @JsonKey()
  final bool active;
  @override
  @JsonKey()
  final String id;
  @override
  final BuilderEndingWidget? ending;

  @override
  String toString() {
    return 'PageModel.custom(title: $title, icon: $icon, pageType: $pageType, child: $child, active: $active, id: $id, ending: $ending)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationCustomPageImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.pageType, pageType) ||
                other.pageType == pageType) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ending, ending) || other.ending == ending));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, icon, pageType, child, active, id, ending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationCustomPageImplCopyWith<_$ApplicationCustomPageImpl>
      get copyWith => __$$ApplicationCustomPageImplCopyWithImpl<
          _$ApplicationCustomPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool active, String id, Widget? child,
            PageType pageType, @igFreezedJson BuildMenuIcon? render)
        main,
    required TResult Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)
        favorite,
    required TResult Function(bool active, Widget? child, String id,
            PageType pageType, @igFreezedJson BuildMenuIcon? render)
        upload,
    required TResult Function(FsModel model, bool active, PageType pageType)
        fsModel,
    required TResult Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)
        custom,
  }) {
    return custom(title, icon, pageType, child, active, id, ending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool active, String id, Widget? child, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        main,
    TResult? Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)?
        favorite,
    TResult? Function(bool active, Widget? child, String id, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        upload,
    TResult? Function(FsModel model, bool active, PageType pageType)? fsModel,
    TResult? Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)?
        custom,
  }) {
    return custom?.call(title, icon, pageType, child, active, id, ending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool active, String id, Widget? child, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        main,
    TResult Function(bool active, String id, PageType pageType,
            @igFreezedJson Widget? child)?
        favorite,
    TResult Function(bool active, Widget? child, String id, PageType pageType,
            @igFreezedJson BuildMenuIcon? render)?
        upload,
    TResult Function(FsModel model, bool active, PageType pageType)? fsModel,
    TResult Function(String title, IconData icon, PageType pageType,
            Widget child, bool active, String id, BuilderEndingWidget? ending)?
        custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(title, icon, pageType, child, active, id, ending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationMainPage value) main,
    required TResult Function(ApplicationFavoritePage value) favorite,
    required TResult Function(ApplicationUploadPage value) upload,
    required TResult Function(ApplicationFsModelPage value) fsModel,
    required TResult Function(ApplicationCustomPage value) custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationMainPage value)? main,
    TResult? Function(ApplicationFavoritePage value)? favorite,
    TResult? Function(ApplicationUploadPage value)? upload,
    TResult? Function(ApplicationFsModelPage value)? fsModel,
    TResult? Function(ApplicationCustomPage value)? custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationMainPage value)? main,
    TResult Function(ApplicationFavoritePage value)? favorite,
    TResult Function(ApplicationUploadPage value)? upload,
    TResult Function(ApplicationFsModelPage value)? fsModel,
    TResult Function(ApplicationCustomPage value)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class ApplicationCustomPage extends PageModel {
  factory ApplicationCustomPage(
      {required final String title,
      required final IconData icon,
      required final PageType pageType,
      required final Widget child,
      final bool active,
      final String id,
      final BuilderEndingWidget? ending}) = _$ApplicationCustomPageImpl;
  ApplicationCustomPage._() : super._();

  String get title;
  IconData get icon;
  @override
  PageType get pageType;
  Widget get child;
  @override
  bool get active;
  String get id;
  BuilderEndingWidget? get ending;
  @override
  @JsonKey(ignore: true)
  _$$ApplicationCustomPageImplCopyWith<_$ApplicationCustomPageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
