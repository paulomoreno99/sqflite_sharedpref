// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously, unused_import, avoid_web_libraries_in_flutter, must_be_immutable, unused_field, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_2/core/presentation/components/brand/brand.image.dart';
import 'package:shared_preferences_2/core/presentation/components/brand/brand_title.dart';
import 'package:shared_preferences_2/core/presentation/components/buttons/default_text_button.dart';
import 'package:shared_preferences_2/core/presentation/list.dart';
import 'package:shared_preferences_2/features/product/presentation/crud.dart';
import 'package:shared_preferences_2/features/welcome/data/datasources/welcome_datasources.dart';

import '../../../core/presentation/components/chekbox/chekbox.dart';

class WelcomePage extends StatelessWidget {
  final bool checkedBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BrandTitleWidget(),
          BrandImageWidget(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          _buildWelcomeText(),
          _buildBottomRow(context),
        ],
      ),
    ));
  }
}

_buildWelcomeText() {
  return Text(
    'Seja bem-vindo ao PeF Delivery',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 18,
    ),
  );
}

_buildBottomRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CheckboxWidget(
        onChanged: (value) {},
      ),
      DefaultTextButton(
          text: 'Avançar',
          textFontSize: 24,
          //textColor: Colors.red,
          onPressed: () async {
            var sp = await SharedPreferences.getInstance();
            var ds = WelcomeDataSource(sharedPreferences: sp);

            await ds.registerDontShowAgain(value: true);

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProductsListPage()));
          }),
    ],
  );
}
