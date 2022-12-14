import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppText extends StatelessWidget {
  double size;
  final String text ;
  final Color color;
  final TextAlign align;

  AppText({Key? key,
    this.size = 16,
    required this.text,
    this.align = TextAlign.start,
    this.color = Colors.black54}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: GoogleFonts.roboto(
          color: color,
          fontSize: size,

      ),
    );
  }
}
