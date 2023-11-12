import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/ContainerModel.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget({super.key, required this.cot});
  ContainerModel cot;

  @override
  Widget build(BuildContext context) {
    final double height = 115.0;

    return GestureDetector(
      onTap: () async {
        final player = AudioPlayer();
        await player.play(AssetSource(cot.sound));
      },
      child: Container(
        color: cot.color,
        height: height,
        width: double.infinity,
      ),
    );
  }
}
