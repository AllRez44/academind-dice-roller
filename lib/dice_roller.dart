import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 1;

  void rollDice() {
    setState(() {
      activeDice = randomizer.nextInt(6) + 1; // (> 1 AND < 6) + 1
    });

    print('Changing Dice...');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$activeDice.png',
          width: 200,
          opacity: const AlwaysStoppedAnimation(100.0),
        ),
        const SizedBox(height: 20), // Empty Box for Spacing
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20), // Padding Top: 20
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll dice!'))
      ],
    );
  }
}
