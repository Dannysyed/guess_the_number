import 'package:flutter/material.dart';

class TextButtodn extends StatelessWidget {
  const TextButtodn(this.onPressed, this.text, {super.key});

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: Colors.black26,
        backgroundColor: Colors.blue,
        minimumSize: const Size(50.0, 50.0),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
