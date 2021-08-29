import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/templatePage.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_strategy/url_strategy.dart';

import 'controller/carouselIndexController.dart';

void main() {
  setPathUrlStrategy();
  Get.put(CarouselIndexController(index: 0), tag: 'blog');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '임연우 Flutter Developer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        dividerColor: Colors.white24,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        scaffoldBackgroundColor: Color(0xFFF242424),
        textTheme: TextTheme(
          headline1: GoogleFonts.nanumPenScript(fontSize: 96),
          headline2: GoogleFonts.nanumPenScript(fontSize: 60),
          headline3: GoogleFonts.nanumPenScript(fontSize: 48),
          headline4: GoogleFonts.nanumPenScript(fontSize: 34),
          headline5: GoogleFonts.nanumPenScript(fontSize: 24),
          headline6: GoogleFonts.castoro(fontSize: 20),
          bodyText1: GoogleFonts.notoSans(fontSize: 20),
          bodyText2: GoogleFonts.notoSans(fontSize: 15, height: 2),
        ).apply(displayColor: Colors.white, bodyColor: Colors.white),
      ),
      home: InteractiveViewer(
        child: TemplatePage(),
        scaleEnabled: getPlatformType() == PlatformType.desktop ? false : true,
      ),
    );
  }

  PlatformType getPlatformType() {
    String userAgent = html.window.navigator.userAgent.toString().toLowerCase();
    // smartphone
    if (userAgent.contains("iphone")) return PlatformType.apple;
    if (userAgent.contains("android")) return PlatformType.android;

    // tablet
    if (userAgent.contains("ipad")) return PlatformType.apple;
    if (html.window.navigator.platform!.toLowerCase().contains("macintel") &&
        html.window.navigator.maxTouchPoints! > 0) return PlatformType.apple;

    return PlatformType.desktop;
  }
}

enum PlatformType {
  apple,
  android,
  desktop,
}
