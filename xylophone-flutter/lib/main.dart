import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void playSound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded pressButton({Color c, int note}){
  return Expanded(
    child: FlatButton(
      color: c,
      onPressed: () {
        playSound(note);
      },
    ),
  );

}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              pressButton(c: Colors.red, note: 1),
              pressButton(c: Colors.orange, note: 2),
              pressButton(c: Colors.yellow, note: 3),
              pressButton(c: Colors.green, note: 4),
              pressButton(c: Colors.teal, note: 5),
              pressButton(c: Colors.blue, note: 6),
              pressButton(c: Colors.purple, note: 7),





            ],
          ),
        ),
      ),
    );
  }
}
