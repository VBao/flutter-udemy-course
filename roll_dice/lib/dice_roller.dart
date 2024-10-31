import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int randomNum = 1;

  void rollDice() {
    setState(() {
      randomNum = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$randomNum.png',
          width: 200,
        ),
        const SizedBox(
          height: 25,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                backgroundColor: Colors.white70,
                foregroundColor: Colors.deepOrange.shade700,
                textStyle: TextStyle(fontSize: 20)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
