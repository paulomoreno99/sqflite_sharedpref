// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BrandImageWidget extends StatelessWidget {
  final double width;
  final double height;

  const BrandImageWidget({this.width = 90, this.height = 50});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/brand/delivery.png',
      width: width,
      height: height,
      fit: BoxFit.fitWidth,
    );
  }
}
