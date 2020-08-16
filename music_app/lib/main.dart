import 'package:flutter/material.dart';
import 'WelcomeScreen.dart';
import 'LoginScreen.dart';
import 'RegistrationScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        RegistrationScreen.id:(context)=> RegistrationScreen(),

      },
      initialRoute: WelcomeScreen.id,
    );
  }
}