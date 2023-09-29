import "package:flutter/material.dart";
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildKey({required Color? color, required int note}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(note);
        },
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildKey(color: Colors.red, note: 1),
              buildKey(color: Colors.orange, note: 2),
              buildKey(color: Colors.yellow, note: 3),
              buildKey(color: Colors.green, note: 4),
              buildKey(color: Colors.teal, note: 5),
              buildKey(color: Colors.blue, note: 6),
              buildKey(color: Colors.purple, note: 7)
            ],
          ),
        ),
      ),
    );
  }
}
