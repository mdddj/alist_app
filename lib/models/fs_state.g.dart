// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fs_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FsStateCWProxy {
  FsState url(String url);

  FsState collectModel(CollectModel? collectModel);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FsState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FsState(...).copyWith(id: 12, name: "My name")
  /// ````
  FsState call({
    String? url,
    CollectModel? collectModel,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFsState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFsState.copyWith.fieldName(...)`
class _$FsStateCWProxyImpl implements _$FsStateCWProxy {
  const _$FsStateCWProxyImpl(this._value);

  final FsState _value;

  @override
  FsState url(String url) => this(url: url);

  @override
  FsState collectModel(CollectModel? collectModel) =>
      this(collectModel: collectModel);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FsState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FsState(...).copyWith(id: 12, name: "My name")
  /// ````
  FsState call({
    Object? url = const $CopyWithPlaceholder(),
    Object? collectModel = const $CopyWithPlaceholder(),
  }) {
    return FsState(
      url: url == const $CopyWithPlaceholder() || url == null
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as String,
      collectModel: collectModel == const $CopyWithPlaceholder()
          ? _value.collectModel
          // ignore: cast_nullable_to_non_nullable
          : collectModel as CollectModel?,
    );
  }
}

extension $FsStateCopyWith on FsState {
  /// Returns a callable class that can be used as follows: `instanceOfFsState.copyWith(...)` or like so:`instanceOfFsState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FsStateCWProxy get copyWith => _$FsStateCWProxyImpl(this);
}
