import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:tron/background_component.dart';
import 'package:tron/logo.dart';
import 'package:tron/tron_game.dart';

import 'game_colors.dart';


class SplashPage extends Component with TapCallbacks, HasGameRef<TronGame>{
  static const String id = 'splash-page';

  @override
  Future<void> onLoad() async{
    addAll([
      BackgroundComponent(GameColors.backgroundColor),
      Logo(),
    ]);
  }
}