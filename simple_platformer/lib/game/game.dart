import 'package:flame/flame.dart';
import 'package:flame/game.dart';

import 'package:simple_platformer/level/level.dart';

class SimplePlatformer extends FlameGame {
  Level? _currentLevel;

  @override
  Future<void> onLoad() async {
    await Flame.device.fullScreen();
    await Flame.device.setLandscape();

    camera.viewport = FixedResolutionViewport(Vector2(640, 384));

    // _currentLevel = Level('level2.tmx');
    // add(_currentLevel!);
    loadLevel('level2.tmx');

    return super.onLoad();
  }

  void loadLevel(String levelName) {
    _currentLevel?.removeFromParent();
    _currentLevel = Level(levelName);
    add(_currentLevel!);
  }
}
