// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//convenção do Dart começar com k minusculo...pesquisar depois
const String kDontShowAgain = 'dontShowAgain';

class WelcomeDataSource {
  final SharedPreferences sharedPreferences;

  WelcomeDataSource({required this.sharedPreferences});

  registerDontShowAgain({required bool value}) async {
    await sharedPreferences.setBool(kDontShowAgain, value);
  }

  bool getDontShowAgain() {
    return sharedPreferences.getBool(kDontShowAgain) ?? false;
  }
}
