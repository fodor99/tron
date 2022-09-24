import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:tron/logo.dart';


import 'game_colors.dart';

class TronGame extends FlameGame with HasTappableComponents, HasKeyboardHandlerComponents{

  @override
  Color backgroundColor() => GameColors.backgroundColor;

  @override
  Future<void> onLoad() async{
    debugMode = true;
    add(FpsTextComponent());
    camera.viewport = FixedResolutionViewport(Vector2(size.x, size.y));
    add(Logo());
  }
}