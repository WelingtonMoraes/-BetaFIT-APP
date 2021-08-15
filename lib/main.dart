// @dart=2.9

//main pack
import 'package:flutter/material.dart';

//components
import 'package:beta_fit_app/components/pallete.components.dart';

//pages
import 'package:beta_fit_app/pages/login.page.dart';
import 'package:beta_fit_app/pages/register.page.dart';
import 'package:beta_fit_app/pages/home.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beta Fit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Palette.yellowGreen,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => Home(),
      },
    );
  }
}
