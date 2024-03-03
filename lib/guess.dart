import 'dart:math';

import 'package:flutter/material.dart';

class Guess extends StatefulWidget {
  const Guess({super.key});

  @override
  State<Guess> createState() {
    return _Guess();
  }
}

class _Guess extends State<Guess> {
  var showfirst = false;
  var activeGuess = "assets/images/guess.png";
  var guessNumber = Random().nextInt(6) + 1;

  void onPressedd() {
    setState(() {
      if (showfirst == false) {
        activeGuess = "assets/images/dice-1.png";
        showfirst = true;
      } else {
        activeGuess = "assets/images/guess.png";
        showfirst = false;
      }
    });
    print("s");
  }

  @override
  Widget build(context) {
    return Column(
      children: [
        Image.asset(activeGuess),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: onPressedd,
              style: TextButton.styleFrom(
                foregroundColor: Colors.black26,
                backgroundColor: Colors.blue,
                minimumSize: const Size(50.0, 50.0),
              ),
              child: const Text(
                "+",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            // Add other buttons or widgets as needed
          ],
        )
      ],
    );
  }
}
