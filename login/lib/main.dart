import 'package:flutter/material.dart';
import 'package:login/pages/register.dart';
import 'package:login/pages/login.dart';
import 'package:login/screens/onboarding/body_boarding.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
       initialRoute:'/' ,
      routes: {
        '/': (context) => BodyBoarding(),
        '/segunda':(context) => Register()
      },
    );
  }
}
