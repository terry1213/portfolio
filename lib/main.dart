import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/templatePage.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Terry\'s portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF242424),
        textTheme: TextTheme(
          headline1: GoogleFonts.castoro(),
          headline6: GoogleFonts.castoro(fontWeight: FontWeight.bold),
          bodyText1: GoogleFonts.notoSans(),
        ).apply(displayColor: Colors.white, bodyColor: Colors.white),
      ),
      home: TemplatePage(),
    );
  }
}