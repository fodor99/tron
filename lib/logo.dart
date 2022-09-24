import 'dart:math' as math;

import 'package:flame/components.dart';
import 'package:tron/tron_game.dart';

class Logo extends SpriteComponent with HasGameRef<TronGame>{

  @override
  Future<void> onLoad() async{
    await super.onLoad();
    final gameSize = gameRef.size;
    position.x = gameSize.x / 2  ;
    position.y = gameSize.y / 2  ;
    size = Vector2(300.0, 100.0);
    sprite = await Sprite.load('tron.jpg');
    debugMode = true;
    anchor = Anchor.center;
  }

  @override
  void update(double dt) {
    super.update(dt);
    angle += 0.25 * dt;
    angle %= 2 * math.pi;
  }
}