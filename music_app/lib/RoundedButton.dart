import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class RoundedButton extends StatelessWidget {
  RoundedButton({this.color, this.title, @required this.onPressed});

  final Color color;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.02),
      child: Material(
        color:color,
        borderRadius: BorderRadius.circular(7.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: width * 0.9,
          height: height * 0.06,
          child: Text(
            title,
            style: GoogleFonts.montserratSubrayada(
              letterSpacing: 0.5,
              color: Colors.pink,
              fontSize: height * 0.045,
            ),
          ),
        ),
      ),
    );
  }
}

