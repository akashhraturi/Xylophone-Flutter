import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded buildKey(int num, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(num);
        },
        child: Text(''),
        style: TextButton.styleFrom(
          backgroundColor: color,
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.purple),
              buildKey(2, Colors.red),
              buildKey(3, Colors.orange),
              buildKey(4, Colors.yellow),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.brown),
            ],
          ),
        ),
      ),
    );
  }
}
