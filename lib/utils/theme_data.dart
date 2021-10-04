import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var lightThemeData = ThemeData(
  appBarTheme: AppBarTheme(
    color: Color(0xFFFFFFFFF),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  bottomAppBarColor: Colors.black12,
  brightness: Brightness.light,
  dividerColor: Colors.black26,
  highlightColor: Colors.transparent,
  hoverColor: Colors.transparent,
  iconTheme: IconThemeData(
    color: Colors.black,
  ),
  scaffoldBackgroundColor: Color(0xFFFFFFFFF),
  splashColor: Colors.transparent,
  textTheme: textThemeLight,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.black),
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      textStyle: MaterialStateProperty.all(
          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      visualDensity: VisualDensity.compact,
    ),
  ),
);

var darkThemeData = ThemeData(
  appBarTheme: AppBarTheme(
    color: Color(0xFFF242424),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomAppBarColor: Colors.white10,
  brightness: Brightness.dark,
  dividerColor: Colors.white24,
  highlightColor: Colors.transparent,
  hoverColor: Colors.transparent,
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
  scaffoldBackgroundColor: Color(0xFFF242424),
  splashColor: Colors.transparent,
  textTheme: textThemeDark,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white),
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      textStyle: MaterialStateProperty.all(
          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      visualDensity: VisualDensity.compact,
    ),
  ),
);

var textThemeLight = TextTheme(
  headline1: GoogleFonts.nanumPenScript(fontSize: 96, color: Colors.black),
  headline2: GoogleFonts.nanumPenScript(fontSize: 60, color: Colors.black),
  headline3: GoogleFonts.nanumPenScript(fontSize: 48, color: Colors.black),
  headline4: GoogleFonts.nanumPenScript(fontSize: 34, color: Colors.black),
  headline5: GoogleFonts.notoSans(fontSize: 24, color: Colors.black),
  headline6: GoogleFonts.notoSans(fontSize: 20, color: Colors.black),
  bodyText1: GoogleFonts.notoSans(fontSize: 20, color: Colors.black),
  bodyText2: GoogleFonts.notoSans(fontSize: 15, height: 2, color: Colors.black),
);

var textThemeDark = TextTheme(
  headline1: GoogleFonts.nanumPenScript(fontSize: 96, color: Colors.white),
  headline2: GoogleFonts.nanumPenScript(fontSize: 60, color: Colors.white),
  headline3: GoogleFonts.nanumPenScript(fontSize: 48, color: Colors.white),
  headline4: GoogleFonts.nanumPenScript(fontSize: 34, color: Colors.white),
  headline5: GoogleFonts.notoSans(fontSize: 24, color: Colors.white),
  headline6: GoogleFonts.notoSans(fontSize: 20, color: Colors.white),
  bodyText1: GoogleFonts.notoSans(fontSize: 20, color: Colors.white),
  bodyText2: GoogleFonts.notoSans(fontSize: 15, height: 2, color: Colors.white),
);