import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/experimental.dart';
import 'package:tron/background_component.dart';
import 'package:tron/logo.dart';
import 'package:tron/tron_game.dart';

import 'game_colors.dart';


class SplashPage extends Component with TapCallbacks, HasGameRef<TronGame>{
  static const String id = 'splash-page';

  late OpacityEffect opacityEffect;

  @override
  Future<void> onLoad() async{
    var logo = Logo();

    final opacityController = EffectController(
      duration: 1,
      reverseDuration: 1,
      infinite: true,
    );
    opacityEffect = OpacityEffect.fadeOut(opacityController);
    logo.add(opacityEffect);

    addAll([
      BackgroundComponent(GameColors.backgroundColor),
      logo,
    ]);
  }


}