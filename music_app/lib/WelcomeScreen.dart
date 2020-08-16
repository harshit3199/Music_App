import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'RoundedButton.dart';
import 'RegistrationScreen.dart';
class WelcomeScreen extends StatefulWidget {
  static String id = 'WelcomeScreen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}
class _WelcomeScreenState extends State<WelcomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding:EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width*0.1
        ),child:Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RoundedButton(
            onPressed:() {Navigator.pushReplacementNamed(context, LoginScreen.id);},
            title: 'Login',
            color: Colors.orangeAccent,

          ),
          RoundedButton(
            onPressed:(){Navigator.pushReplacementNamed(context, RegistrationScreen.id);},

            title: 'Register',
            color: Colors.orangeAccent,

          ),
        ],
      ),
      ),
    );
  }
}
