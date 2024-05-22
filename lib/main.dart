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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              
              Expanded(
                child: TextButton( 
                    onPressed: (){
                      playSound(1);
                    }, 
                    style:TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(.0),),
                  ),
                    child: const Text(''),
                  ),
              ),

              Expanded(
                child: TextButton( 
                  onPressed: (){
                    playSound(2);
                  }, 
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(.0),),
                  ), 
                  child: const Text(' '),
                ),
              ),

              Expanded(
                child: TextButton( 
                  onPressed: (){
                    playSound(3);
                  }, 
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(.0),),
                  ), 
                  child: const Text(' '),
                ),
              ),

              Expanded(
                child: TextButton( 
                  onPressed: (){
                    playSound(4);
                  }, 
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(.0),),
                  ), 
                  child: const Text(' '),
                ),
              ),

              Expanded(
                child: TextButton( 
                  onPressed: (){
                    playSound(5);
                  }, 
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.cyan,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(.0),),
                  ), 
                  child: const Text(' '),
                ),
              ),

              Expanded(
                child: TextButton( 
                  onPressed: (){
                    playSound(6);
                  }, 
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(.0),),
                  ), 
                  child: const Text(' '),
                ),
              ),

              Expanded(
                child: TextButton( 
                  onPressed: (){
                    playSound(7);
                  }, 
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(.0),),
                  ), 
                  child: const Text(' '),
                ),
              ),
            ],
          ),
      )
    ),
    );
  }
}