import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:tron/splash_page.dart';

import 'game_colors.dart';

class TronGame extends FlameGame with HasTappableComponents, HasKeyboardHandlerComponents{
  late final RouterComponent router;

  @override
  Color backgroundColor() => GameColors.backgroundColor;

  @override
  Future<void> onLoad() async{

    debugMode = true;
    camera.viewport = FixedResolutionViewport(Vector2(size.x, size.y));

    addAll([
      router = RouterComponent(
          initialRoute: SplashPage.id,
          routes: {
            SplashPage.id: Route(SplashPage.new),
          }
      ),
      FpsTextComponent(),
    ]
    );
  }
}