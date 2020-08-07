import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final audio = new AudioCache();
    audio.play("note$soundNumber.wav");
  }

  Expanded buildKey({Color color, int numberSound}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(numberSound);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, numberSound: 1),
              buildKey(color: Colors.orange, numberSound: 2),
              buildKey(color: Colors.yellow, numberSound: 3),
              buildKey(color: Colors.green, numberSound: 4),
              buildKey(color: Colors.teal, numberSound: 5),
              buildKey(color: Colors.blue, numberSound: 6),
              buildKey(color: Colors.purple, numberSound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
