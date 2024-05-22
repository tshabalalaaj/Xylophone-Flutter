import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

Expanded buildkey({required int soundNumber, required Color color}){
    return Expanded(
      child: TextButton( 
        onPressed: (){
          playSound(soundNumber);
          },
          style:TextButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(.0),),
          ),
        child: const Text(''),
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
              buildkey(soundNumber: 1, color: Colors.yellow),
              buildkey(soundNumber: 2, color: Colors.red),
              buildkey(soundNumber: 3, color: Colors.green),
              buildkey(soundNumber: 4, color: Colors.blue),
              buildkey(soundNumber: 5, color: Colors.purple),
              buildkey(soundNumber: 6, color: Colors.orange),
              buildkey(soundNumber: 7, color: Colors.pink),
            ],
          ),
      )
    ),
    );
  }
}