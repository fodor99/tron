import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TronGame extends FlameGame with KeyboardEvents{

  final paint = Paint()..color = Colors.orange;

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    var rect = const Rect.fromLTWH(100, 200, 100, 100);
    canvas.drawRect(rect, paint);
  }

  @override
  KeyEventResult onKeyEvent(
      RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {

      print(keysPressed);

      return KeyEventResult.handled;
  }
}