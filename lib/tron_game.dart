import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'logo.dart';

class TronGame extends FlameGame with KeyboardEvents{

  final paint = Paint()..color = Colors.orange;


  bool _goLeft = false;
  bool _goRight = false;
  bool _goUp = false;
  bool _goDown = false;

  static const double _speed = 100.0;
  static const double _friction = 0.9;

  Vector2 _position = Vector2(300, 300);
  Vector2 _movementVector = Vector2.zero();

  late final Logo _logo;

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    _logo = Logo();
    _logo.debugMode = true;
    _logo.priority = 9;
    _logo.x = 200;
    _logo.y = 100;
    await add(_logo);
    await add(FpsTextComponent());
  }

  @override
  void update(double dt) {
    super.update(dt);

    final Vector2 inputVector = Vector2.zero();

    if (_goLeft) {
      inputVector.x -= 1.0;
    } else if (_goRight) {
      inputVector.x += 1.0;
    }

    if (_goUp) {
      inputVector.y -= 1.0;
    } else if (_goDown) {
      inputVector.y += 1.0;
    }

    if (!inputVector.isZero()) {
      _movementVector = inputVector;

      _movementVector.normalize();
      _movementVector *= _speed * dt;
    } else {
      _movementVector *= _friction;
    }

    _position += _movementVector;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    var rect = Rect.fromLTWH(_position.x, _position.y, 100, 100);
    canvas.drawRect(rect, paint);
  }

  @override
  KeyEventResult onKeyEvent(
      RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {

      if(keysPressed.contains(LogicalKeyboardKey.arrowLeft) &&
      event is RawKeyDownEvent){
        _goLeft = true;
      }else if(event is RawKeyUpEvent &&
      event.data.logicalKey == LogicalKeyboardKey.arrowLeft){
        _goLeft = false;
      }

      if(keysPressed.contains(LogicalKeyboardKey.arrowRight) &&
          event is RawKeyDownEvent){
        _goRight = true;
      }else if(event is RawKeyUpEvent &&
          event.data.logicalKey == LogicalKeyboardKey.arrowRight){
        _goRight = false;
      }

      if(keysPressed.contains(LogicalKeyboardKey.arrowUp) &&
          event is RawKeyDownEvent){
        _goUp = true;
      }else if(event is RawKeyUpEvent &&
          event.data.logicalKey == LogicalKeyboardKey.arrowUp){
        _goUp = false;
      }

      if(keysPressed.contains(LogicalKeyboardKey.arrowDown) &&
          event is RawKeyDownEvent){
        _goDown = true;
      }else if(event is RawKeyUpEvent &&
          event.data.logicalKey == LogicalKeyboardKey.arrowDown){
        _goDown = false;
      }


      return KeyEventResult.handled;
  }
}