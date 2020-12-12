import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Widget expandedWidget(int soundNum, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNum);
        },
        child: Text(''),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                expandedWidget(1, Colors.red),
                expandedWidget(2, Colors.orange),
                expandedWidget(3, Colors.yellow),
                expandedWidget(4, Colors.green),
                expandedWidget(5, Colors.teal),
                expandedWidget(6, Colors.blue),
                expandedWidget(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
