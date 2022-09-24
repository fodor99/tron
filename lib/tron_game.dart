import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/game.dart';

import 'logo.dart';

class TronGame extends FlameGame{

  @override
  Future<void> onLoad() async{
    debugMode = true;
    add(FpsTextComponent());
    camera.viewport = FixedResolutionViewport(Vector2(size.x, size.y));
    var _logo = Logo();
    var _rotate = RotateEffect.to(
        Transform2D.tau,
      EffectController(
        duration: 2,
        infinite: true,
      )
    );
    _logo.add(_rotate);
    add(_logo);
  }
}