// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors,

import 'package:flutter/material.dart';

class DefaultTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? textColor;
  final double textFontSize;

  const DefaultTextButton(
      {required this.text,
      required this.onPressed,
      this.textColor,
      this.textFontSize = 18});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color?>(textColor),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            fontSize: textFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
      ),
    );
  }
}
