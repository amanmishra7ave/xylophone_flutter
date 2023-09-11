import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
      XylophoneApp(),
    );

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    void note(int n) {
      final player = AudioPlayer();
      player.play(AssetSource('note$n.wav'));
    }

    Expanded KeyButton(int p) {
      Color color = Colors.red;
      switch (p) {
        case 1:
          color = Colors.blue;
          break;
        case 2:
          color = Colors.pink;
          break;
        case 3:
          color = Colors.amber;
          break;
        case 3:
          color = Colors.purple;
          break;
        case 4:
          color = Colors.orange;
          break;
        case 5:
          color = Colors.green;
          break;
        case 6:
          color = Colors.cyan;
          break;
        case 7:
          color = Colors.indigo;
          break;
      }

      return Expanded(
        child: Container(
          color: color,
          child: TextButton(
            onPressed: () {
              note(p);
            },
            child: Container(),
          ),
        ),
      );
    }

    return MaterialApp(
      // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                KeyButton(1),
                KeyButton(2),
                KeyButton(3),
                KeyButton(4),
                KeyButton(5),
                KeyButton(6),
                KeyButton(7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
