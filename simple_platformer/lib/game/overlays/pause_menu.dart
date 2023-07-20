import 'package:flame_simple_platformer/game/utils/audio_manager.dart';
import 'package:flutter/material.dart';

import '../game.dart';
import 'main_menu.dart';

class PauseMenu extends StatelessWidget {
  static const id = 'PauseMenu';
  final SimplePlatformer game;

  const PauseMenu({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withAlpha(100),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  AudioManager.resumeBgm();
                  game.overlays.remove(id);
                  game.resumeEngine();
                },
                child: const Text('Resume'),
              ),
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  game.overlays.remove(id);
                  game.resumeEngine();
                  game.removeAll(game.children);
                  game.overlays.add(MainMenu.id);
                },
                child: const Text('Exit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
