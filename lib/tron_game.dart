import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'logo.dart';

class TronGame extends FlameGame
    with
        HasDraggables,
        HasTappables{

  @override
  Future<void> onLoad() async{
    debugMode = true;
    add(FpsTextComponent());
    camera.viewport = FixedResolutionViewport(Vector2(size.x, size.y));


    final joystick = JoystickComponent(
      priority: 100,
      anchor: Anchor.bottomLeft,
      position: Vector2(30, size.y - 30),
      // size: 100,
      background: CircleComponent(
        priority: 100,
        radius: 60,
        paint: Paint()..color = Colors.white.withOpacity(0.5),
      ),
      knob: CircleComponent(radius: 30),
    );
    add(joystick);

    final logo = Logo(joystick);
    logo.flipHorizontally();
    add(logo);

  }
}