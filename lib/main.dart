import 'package:flutter/material.dart';
import 'package:guess_the_number/container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer([Colors.black, Colors.black12, Colors.black26]),
    ),
  ));
}
