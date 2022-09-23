import 'package:flame/components.dart';

class Logo extends SpriteComponent{

  @override
  Future<void> onLoad() async{
    await super.onLoad();
    size = Vector2(300.0, 100.0);
    sprite = await Sprite.load('tron.jpg');
  }
}