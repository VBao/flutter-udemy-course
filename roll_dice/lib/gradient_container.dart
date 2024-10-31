import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {required this.boldColor, required this.lightColor, super.key});

  GradientContainer.pink()
      : boldColor = Colors.pink.shade700,
        lightColor = Colors.pink.shade300;

  final Color boldColor;
  final Color lightColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [boldColor, lightColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
