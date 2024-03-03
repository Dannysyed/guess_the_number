import 'package:flutter/material.dart';

class TextButtodn extends StatelessWidget {
  const TextButtodn(this.text, this.onPressed, {super.key});

  final String text;
  final VoidCallback onPressed;

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
