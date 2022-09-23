import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TronGame extends FlameGame with KeyboardEvents{

  final paint = Paint()..color = Colors.orange;

  double _x = 100.0;
  double _y = 200.0;

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    var rect = Rect.fromLTWH(_x, _y, 100, 100);
    canvas.drawRect(rect, paint);
  }

  @override
  KeyEventResult onKeyEvent(
      RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {

      final isKeyDown = event is RawKeyDownEvent;

      if(keysPressed.contains(LogicalKeyboardKey.arrowLeft) && isKeyDown){
        _x -= 1.0;
      }else if(keysPressed.contains(LogicalKeyboardKey.arrowRight) && isKeyDown){
        _x += 1.0;
      }

      if(keysPressed.contains(LogicalKeyboardKey.arrowUp) && isKeyDown){
        _y -= 1.0;
      }else if(keysPressed.contains(LogicalKeyboardKey.arrowDown) && isKeyDown){
        _y += 1.0;
      }


      return KeyEventResult.handled;
  }
}