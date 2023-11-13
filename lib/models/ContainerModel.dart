import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';

class ContainerModel {
  final Color color;
  final String sound;
  ContainerModel({
    required this.color,
    required this.sound,
  });
  // method to play sound
  void PlaySound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(sound));
  }
}
