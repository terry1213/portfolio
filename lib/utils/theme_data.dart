import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData = ThemeData(
  appBarTheme: AppBarTheme(
    color: Colors.blueGrey[900],
    foregroundColor: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomAppBarColor: Colors.blueGrey[900],
  brightness: Brightness.light,
  cardColor: Colors.blueGrey[50],
  dividerColor: Colors.blueGrey[400],
  highlightColor: Colors.transparent,
  hoverColor: Colors.transparent,
  iconTheme: IconThemeData(
    color: Colors.blueGrey,
  ),
  primarySwatch: Colors.blueGrey,
  scaffoldBackgroundColor: Colors.white,
  splashColor: Colors.transparent,
  textTheme: textThemeLight,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.blueGrey),
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      textStyle: MaterialStateProperty.all(TextStyle(
          color: Colors.blueGrey, fontSize: 15, fontWeight: FontWeight.bold)),
      visualDensity: VisualDensity.compact,
    ),
  ),
);

ThemeData darkThemeData = ThemeData(
  appBarTheme: AppBarTheme(
    color: Color(0xFFF242424),
    foregroundColor: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomAppBarColor: Color(0xFFF242424),
  brightness: Brightness.dark,
  cardColor: Colors.white12,
  dividerColor: Colors.white24,
  highlightColor: Colors.transparent,
  hoverColor: Colors.transparent,
  iconTheme: IconThemeData(
    color: Colors.blueGrey[200],
  ),
  primarySwatch: Colors.blueGrey,
  scaffoldBackgroundColor: Color(0xFFF242424),
  splashColor: Colors.transparent,
  textTheme: textThemeDark,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.blueGrey[200]),
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      textStyle: MaterialStateProperty.all(TextStyle(
          color: Colors.blueGrey[200],
          fontSize: 15,
          fontWeight: FontWeight.bold)),
      visualDensity: VisualDensity.compact,
    ),
  ),
);

TextTheme textThemeLight = TextTheme(
  headline1: GoogleFonts.nanumPenScript(
      fontSize: 96,
      color: Colors.black,
      decorationColor: Colors.white.withOpacity(0),
      decoration: TextDecoration.underline),
  headline2: GoogleFonts.nanumPenScript(
      fontSize: 60,
      color: Colors.black,
      decorationColor: Colors.white.withOpacity(0),
      decoration: TextDecoration.underline),
  headline3: GoogleFonts.nanumPenScript(
      fontSize: 48,
      color: Colors.black,
      decorationColor: Colors.white.withOpacity(0),
      decoration: TextDecoration.underline),
  headline4: GoogleFonts.notoSans(
      fontSize: 34,
      color: Colors.black,
      decorationColor: Colors.white.withOpacity(0),
      decoration: TextDecoration.underline),
  headline5: GoogleFonts.notoSans(
      fontSize: 24,
      color: Colors.black,
      decorationColor: Colors.white.withOpacity(0),
      decoration: TextDecoration.underline),
  headline6: GoogleFonts.notoSans(
      fontSize: 20,
      color: Colors.black,
      decorationColor: Colors.white.withOpacity(0),
      decoration: TextDecoration.underline),
  bodyText1: GoogleFonts.notoSans(
      fontSize: 20,
      color: Colors.black,
      decorationColor: Colors.white.withOpacity(0),
      decoration: TextDecoration.underline),
  bodyText2: GoogleFonts.notoSans(
      fontSize: 16,
      height: 2,
      color: Colors.black,
      decorationColor: Colors.white.withOpacity(0),
      decoration: TextDecoration.underline),
);

TextTheme textThemeDark = TextTheme(
  headline1: GoogleFonts.nanumPenScript(
      fontSize: 96,
      color: Colors.white,
      decorationColor: Colors.white.withOpacity(0),
      decoration: TextDecoration.underline),
  headline2: GoogleFonts.nanumPenScript(
      fontSize: 60,
      color: Colors.white,
      decorationColor: Colors.white.withOpacity(0),
      decoration: TextDecoration.underline),
  headline3: GoogleFonts.nanumPenScript(
      fontSize: 48,
      color: Colors.white,
      decorationColor: Colors.white.withOpacity(0),
      decoration: TextDecoration.underline),
  headline4: GoogleFonts.notoSans(
      fontSize: 34,
      color: Colors.white,
      decorationColor: Colors.white.withOpacity(0),
      decoration: TextDecoration.underline),
  headline5: GoogleFonts.notoSans(
      fontSize: 24,
      color: Colors.white,
      decorationColor: Colors.white.withOpacity(0),
      decoration: TextDecoration.underline),
  headline6: GoogleFonts.notoSans(
      fontSize: 20,
      color: Colors.white,
      decorationColor: Colors.white.withOpacity(0),
      decoration: TextDecoration.underline),
  bodyText1: GoogleFonts.notoSans(
      fontSize: 20,
      color: Colors.white,
      decorationColor: Colors.white.withOpacity(0),
      decoration: TextDecoration.underline),
  bodyText2: GoogleFonts.notoSans(
      fontSize: 16,
      height: 2,
      color: Colors.white,
      decorationColor: Colors.white.withOpacity(0),
      decoration: TextDecoration.underline),
);
