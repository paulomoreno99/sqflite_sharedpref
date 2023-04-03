// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BrandTitleWidget extends StatelessWidget {
  final double fontSize;

  const BrandTitleWidget({this.fontSize = 62});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'PeF Delivery',
        style: TextStyle(
            fontSize: fontSize,
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
