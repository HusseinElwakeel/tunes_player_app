import 'package:flutter/material.dart';
import 'package:tunes_player_app/Widets/ItemWidget.dart';
import 'package:tunes_player_app/models/ContainerModel.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<ContainerModel> container = [
    ContainerModel(color: Colors.red, sound: 'sounds/note1.wav'),
    ContainerModel(color: Colors.pinkAccent, sound: 'sounds/note2.wav'),
    ContainerModel(color: Colors.pink, sound: 'sounds/note3.wav'),
    ContainerModel(color: Colors.orange, sound: 'sounds/note4.wav'),
    ContainerModel(color: Colors.deepOrange, sound: 'sounds/note5.wav'),
    ContainerModel(color: Colors.deepOrangeAccent, sound: 'sounds/note6.wav'),
    ContainerModel(color: Colors.yellowAccent, sound: 'sounds/note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
