import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'menu_overlay.dart';
import 'tron_game.dart';

TronGame _tronGame = TronGame();

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final TronGame _game;

  @override
  void initState() {
    super.initState();
    _game = _tronGame;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: GameWidget(
              game: _game,
              initialActiveOverlays: const [MenuOverlay.id],
              overlayBuilderMap: {
                MenuOverlay.id: (BuildContext context, TronGame gameRef) =>
                    MenuOverlay(
                      gameRef: gameRef
                    )
              },
          ),
        ),
      ),
    );
  }
}
