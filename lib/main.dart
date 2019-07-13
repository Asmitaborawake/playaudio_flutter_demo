import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    XyloApp()
  );
}

class XyloApp extends StatelessWidget {
  // This widget is the root of your application.

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.mp3');
  }

  Expanded buildkey({Color color, int soundNumber}){
   return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber);
        },

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

            children: <Widget>[
              buildkey(color:Colors.red, soundNumber: 1),
              buildkey(color: Colors.yellowAccent, soundNumber: 2),
              buildkey(color: Colors.deepPurple, soundNumber: 3),
              buildkey(color: Colors.lightGreen , soundNumber: 4),
              buildkey(color: Colors.pinkAccent,  soundNumber: 5),
              buildkey(color: Colors.amber , soundNumber: 6),
              buildkey(color: Colors.cyanAccent , soundNumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}

