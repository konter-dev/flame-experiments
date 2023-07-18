import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:simple_platformer/game/game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Platformer',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: GameWidget(
          game: SimplePlatformer(),
        ),
      ),
    );
  }
}
