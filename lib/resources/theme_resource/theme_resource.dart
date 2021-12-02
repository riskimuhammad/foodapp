import 'package:flutter/material.dart';
import 'package:foodapp/core/bloc/theme/theme_event.dart';
import 'package:foodapp/widget/color/color.dart';
import 'package:google_fonts/google_fonts.dart';

final appThemeData = {
  ThemeEvent.toEvent: ThemeData(
      backgroundColor: backgroundWhite,
      scaffoldBackgroundColor: backgroundP,
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(
            color: Color(0xff0a0e4a),
            fontSize: 30,
            fontWeight: FontWeight.bold),
        headline3: GoogleFonts.poppins(
            color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
        headline2: GoogleFonts.poppins(
            color: Color(0xff0a0e4a),
            fontSize: 25,
            fontWeight: FontWeight.bold),
        headline4: GoogleFonts.poppins(
            fontSize: 15,
            color: Color(0xff0a0e4a),
            fontWeight: FontWeight.bold),
        headline5: GoogleFonts.poppins(
            fontSize: 13, color: Colors.grey, fontWeight: FontWeight.bold),
        headline6: GoogleFonts.poppins(color: Colors.grey, fontSize: 11),
        subtitle1: GoogleFonts.poppins(color: pColor, fontSize: 12),
        bodyText1: GoogleFonts.poppins(
            color: wColor, fontSize: 30, fontWeight: FontWeight.bold),
        bodyText2: GoogleFonts.poppins(
            color: wColor, fontSize: 20, fontWeight: FontWeight.bold),
      )),
};
