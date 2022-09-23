import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'tron_game.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GameWidget(game: TronGame()),
      ),
    );
  }
}
