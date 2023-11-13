import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/ContainerModel.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget({super.key, required this.cot});
  ContainerModel cot;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => cot.PlaySound(),
        child: Container(
          color: cot.color,
        ),
      ),
    );
  }
}
