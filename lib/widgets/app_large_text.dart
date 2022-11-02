import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppLargeText extends StatelessWidget {
  double size;
  final String text ;
  final Color color;
  final TextAlign align;
  AppLargeText({Key? key,
    this.size = 30,
     required this.text,
    this.align = TextAlign.start,
     this.color = Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: GoogleFonts.roboto(fontStyle: FontStyle.italic, color: color, fontSize: size, fontWeight: FontWeight.bold), /*TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold
      ),*/
    );
  }
}
