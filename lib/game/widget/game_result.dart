import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/game/enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final Result? result;
  final VoidCallback callback;

  const GameResult(
      {required this.isDone, required this.callback, this.result, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            result!.displayString,
            style: const TextStyle(fontSize: 32),
          ),
          SizedBox(
            height: 8,
          ),
          TextButton(
              onPressed: () => callback.call(),
              child: const Text(
                'Redo',
                style: TextStyle(fontSize: 24),
              )),
        ],
      );
    } else {
      return const Center(
        child: Text(
          'Choose your move!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      );
    }
  }
}
