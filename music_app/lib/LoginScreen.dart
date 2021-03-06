import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'RegistrationScreen.dart';
import 'RoundedButton.dart';
class LoginScreen extends StatefulWidget {
  static String id = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen>{
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(

      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding:EdgeInsets.all(height*0.02),
                child: Text(
                  'Login',
                  style:GoogleFonts.abel(
                    letterSpacing: 2.0,
                    fontSize: height*0.10,
                    color: Colors.amber,
                  ),
                ),
              ),
              Container(
                width: width*0.8,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Welcome Back',
                    style:GoogleFonts.abel(
                      letterSpacing: 2.0,
                      fontSize: height*0.038,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.all(height*0.02),
                child: TextField(
                  style:GoogleFonts.abel(
                    color: Colors.amber,
                    letterSpacing: 4.0,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value){
                    email=value;
                  },
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: GoogleFonts.abel(
                        color: Colors.amber,
                        letterSpacing: 4.0,
                      )
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.all(height*0.02),
                child: TextField(
                  style:GoogleFonts.abel(
                    color: Colors.amber,
                    letterSpacing: 4.0,
                  ),
                  obscureText: true,
                  onChanged: (value){
                    password=value;
                  },
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: GoogleFonts.abel(
                        color: Colors.amber,
                        letterSpacing: 4.0,
                      )
                  ),
                ),
              ),
              Center(
                child: RoundedButton(
                    color: Colors.amber,
                    title: 'Login',

                    onPressed:null/* ()async{
                    try{
                      final newUser = await _auth.exist(
                          email: email, password: password);
                      if(newUser !=null){
                        print('Registration Successful');
                        Navigator.pushReplacementNamed(context, LoginScreen.id);
                      }
                    }
                    catch(e){
                      print(e);
                    }
                  },*/
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: width*0.1,
                    child: Divider(
                      color: Colors.pink,
                      thickness: 1.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width*0.05),
                    child: Text(
                      'Or',
                      style: GoogleFonts.abel(
                        color: Colors.amber,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width*0.1,
                    child: Divider(
                      color: Colors.pink,
                      thickness: 1.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Do not have an account?",
                    style: GoogleFonts.abel(
                        letterSpacing: 1.0,
                        fontSize: 20.0,
                        color: Colors.purple
                    ),
                  ),
                  FlatButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, RegistrationScreen.id);
                    },
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.abel(
                        letterSpacing: 0.25,
                        fontSize: 20.0,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

