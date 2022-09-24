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
    //double maxSide = min(size.x, size.y);
    //camera.viewport = FixedResolutionViewport(Vector2(1000, 2400));
    camera.viewport = FixedResolutionViewport(Vector2(size.x, size.y));
    //camera.viewport = FixedResolutionViewport(Vector2.all(maxSide)); //general big screen phone rough resolutions


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