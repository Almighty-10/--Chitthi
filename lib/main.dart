import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(GameWidget(game: LeenaGame()));
}

class LeenaGame extends FlameGame {
  SpriteComponent leena = SpriteComponent();

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    leena
      ..sprite = await loadSprite('girl.png')
      ..size = Vector2.all(100);
    add(leena);
  }
}
