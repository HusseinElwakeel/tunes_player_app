import 'package:flutter/material.dart';
import 'package:tunes_player_app/Constant/ContainerColors.dart';
import 'package:tunes_player_app/Widets/ItemWidget.dart';
import 'package:tunes_player_app/models/ContainerModel.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4f697a),
          elevation: 0.0,
          //to make center without wrap with center in appBar
          centerTitle: true,
          title: Text(
            "Player Tone App",
          ),
        ),
        body: Column(
          // list.map((any thing) => what you want to change or connect the colors with item widget
          children: container.map((items) => ItemWidget(cot: items)).toList(),
        ));
  }
}
