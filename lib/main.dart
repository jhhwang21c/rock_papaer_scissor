import 'package:flutter/material.dart';

import 'game/game_body.dart';

void main() {
  runApp(RPSApp());
}

class RPSApp extends StatelessWidget {
  const RPSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rock Paper Scissors!'),
        ),
        body: const GameBody(),
      ),
    );
  }
}
