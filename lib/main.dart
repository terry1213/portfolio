import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/templatePage.dart';
import 'package:portfolio/utils/screenUtilMinimum.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1440, 820),
      builder: () => MaterialApp(
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
        home: TemplatePage(),
      ),
    );
  }
}
