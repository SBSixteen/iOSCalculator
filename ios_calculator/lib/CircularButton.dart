import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  CircularButton(
      {required this.text,
      required this.color,
      required this.textColor,
      required this.onTap});

  final String text;
  final Color color;
  final Color textColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTap;
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(32),
        backgroundColor: color,
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 32, color: textColor),
      ),
    );
  }
}
