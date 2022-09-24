import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'tron_game.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GameWidget.controlled(gameFactory: TronGame.new),
      ),
    );
  }
}
