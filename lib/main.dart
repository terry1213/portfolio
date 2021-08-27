import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/templatePage.dart';
import 'package:portfolio/utils/screenUtilMinimum.dart';
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
    return ScreenUtilInit(
      designSize: Size(1440, 820),
      builder: () => GetMaterialApp(
        title: '임연우 Flutter Developer',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          dividerColor: Colors.white24,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          scaffoldBackgroundColor: Color(0xFFF242424),
          textTheme: TextTheme(
            headline1:
                GoogleFonts.nanumPenScript(fontSize: ScreenUtilMinimum(96).sp),
            headline2:
                GoogleFonts.nanumPenScript(fontSize: ScreenUtilMinimum(60).sp),
            headline3:
                GoogleFonts.nanumPenScript(fontSize: ScreenUtilMinimum(48).sp),
            headline4:
                GoogleFonts.nanumPenScript(fontSize: ScreenUtilMinimum(34).sp),
            headline5:
                GoogleFonts.nanumPenScript(fontSize: ScreenUtilMinimum(24).sp),
            headline6: GoogleFonts.castoro(fontSize: ScreenUtilMinimum(20).sp),
            bodyText1: GoogleFonts.notoSans(fontSize: ScreenUtilMinimum(20).sp),
            bodyText2: GoogleFonts.notoSans(
                fontSize: ScreenUtilMinimum(15).sp, height: 2),
          ).apply(displayColor: Colors.white, bodyColor: Colors.white),
        ),
        home: InteractiveViewer(
          child: TemplatePage(),
          scaleEnabled:
              getPlatformType() == PlatformType.desktop ? false : true,
        ),
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
