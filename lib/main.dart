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
      title: '임연우 포트폴리오',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        dividerColor: Colors.white24,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        scaffoldBackgroundColor: Color(0xFFF242424),
        textTheme: TextTheme(
          headline1: GoogleFonts.nanumPenScript(),
          headline2: GoogleFonts.nanumPenScript(),
          headline3: GoogleFonts.nanumPenScript(),
          headline4: GoogleFonts.nanumPenScript(),
          headline5: GoogleFonts.nanumPenScript(),
          headline6: GoogleFonts.castoro(),
          bodyText1: GoogleFonts.notoSans(fontSize: 20),
          bodyText2: GoogleFonts.notoSans(fontSize: 13, letterSpacing: 2, height: 2),
        ).apply(displayColor: Colors.white, bodyColor: Colors.white),
      ),
      home: TemplatePage(),
    );
  }
}