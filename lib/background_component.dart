import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class BackgroundComponent extends Component {
  BackgroundComponent(this.color);
  final Color color;

  @override
  void render(Canvas canvas) {
    canvas.drawColor(color, BlendMode.srcATop);
  }
}
