import 'package:flame/components.dart';
import 'package:flame/game.dart';

import 'logo.dart';

class TronGame extends FlameGame{

  @override
  Future<void> onLoad() async{
    debugMode = true;
    add(FpsTextComponent());
    camera.viewport = FixedResolutionViewport(Vector2(size.x, size.y));
    var _logo = Logo();
    add(_logo);
  }
}