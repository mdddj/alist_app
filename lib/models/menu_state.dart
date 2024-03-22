import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_state.freezed.dart';

const igFromJsonAndToJson = JsonKey(
    includeFromJson: false, includeToJson: false, fromJson: null, toJson: null);

@freezed
class MenuState with _$MenuState {
  const MenuState._();

  const factory MenuState(
      {@JsonKey(name: 'leftMenuExpand') @Default(false) bool leftMenuExpand,

      //在面板中的全局未知
      @igFromJsonAndToJson @Default(Offset.zero) Offset pointOffset,
      @igFromJsonAndToJson @Default(Offset.zero) Offset buttonOffset,
      @igFreezedJson required  GlobalKey<ScaffoldState> indexScrollAppbarKey,
      @igFromJsonAndToJson BuildContext? context}) = _MenuState;

}
