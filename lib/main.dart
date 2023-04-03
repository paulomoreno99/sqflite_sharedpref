// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_2/core/presentation/list.dart';
import 'package:shared_preferences_2/core/presentation/mbox_store/product_store.dart';
//import 'package:shared_preferences_2/features/product/presentation/crud.dart';
import 'package:shared_preferences_2/features/welcome/pages/welcome.dart';

import 'features/welcome/data/datasources/welcome_datasources.dart';
//import 'package:shared_preferences/shared_preferences.dart';

void main() {
  GetIt.I.registerSingleton<ProductStore>(ProductStore());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.indigo.shade900,
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue))),
        ),
        home: FutureBuilder(
            future: _buildHome(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return snapshot.data;
              }
              return Container();
            }));
  }

  Future<Widget> _buildHome() async {
    var sp = await SharedPreferences.getInstance();
    var ds = WelcomeDataSource(sharedPreferences: sp);

    if (ds.getDontShowAgain()) {
      return ProductsListPage();
    } else
      return WelcomePage();

    // if (ds.getDontShowAgain()) {
    //   return WelcomePage();
    // } else
    //   return ProductsListPage();
  }
}
