import 'package:flutter/material.dart';
import 'package:tunes_player_app/component/ItemWidget.dart';
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
        title: Center(
          child: Text(
            "Player Tone App",
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ItemWidget(
          cot: container[index],
        ),
        itemCount: container.length,
      ),
    );
  }
}
