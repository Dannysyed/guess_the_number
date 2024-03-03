import 'dart:math';

import 'package:flutter/material.dart';
import 'package:guess_the_number/button.dart';

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
            TextButtodn(onPressed: () {}, text: "+"),
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
