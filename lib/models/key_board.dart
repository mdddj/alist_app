import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_board.freezed.dart';

@freezed
class TvKey with _$TvKey {
  const TvKey._();

  const factory TvKey.up() = TvKeyUp;
  const factory TvKey.down() = TvKeyDown;
  const factory TvKey.left() = TvKeyLeft;
  const factory TvKey.right() = TvKeyRight;
  const factory TvKey.ok() = TvKeyOk;
  const factory TvKey.unknown() = TvKeyUnknown;

  factory TvKey.create(KeyEvent event) {
    if(event.logicalKey == LogicalKeyboardKey.select){
      return const TvKey.ok();
    }else if(event.logicalKey == LogicalKeyboardKey.arrowRight){
      return const TvKey.right();
    }else if(event.logicalKey == LogicalKeyboardKey.arrowLeft){
      return const TvKey.left();
    }else if(event.logicalKey == LogicalKeyboardKey.arrowUp){
      return const TvKey.up();
    }else if(event.logicalKey == LogicalKeyboardKey.arrowDown){
      return const TvKey.down();
    }
    return const TvKey.unknown();
  }
}
