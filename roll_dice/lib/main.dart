import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  Color boldColor = Colors.teal.shade800;
  Color lightColor = Colors.teal.shade100;
  runApp(MaterialApp(
      home: GradientContainer(
    boldColor: boldColor,
    lightColor: lightColor,
  )));
}
