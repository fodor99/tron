import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class MenuOverlay extends StatelessWidget {
  final FlameGame gameRef;
  static const String id = 'menu';
  const MenuOverlay({required this.gameRef, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(children: [
        ElevatedButton(onPressed: (){
          gameRef.paused = true;
        }, child: const Text('Pause')),
        ElevatedButton(onPressed: (){
          gameRef.paused = false;
          gameRef.camera.shake(intensity: 5);
        }, child: const Text('Un-Pause'))
      ],),
    );
  }
}
