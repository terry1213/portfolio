import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/pages/templatePage.dart';
import 'package:portfolio/utils/theme_data.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_strategy/url_strategy.dart';

import 'controller/carouselIndexController.dart';

void main() {
  setPathUrlStrategy();
  Get.put(CarouselIndexController(index: 0), tag: 'blog');
  runApp(EasyDynamicThemeWidget(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '임연우 Flutter Developer',
      debugShowCheckedModeBanner: false,
      darkTheme: darkThemeData,
      theme: lightThemeData,
      themeMode: EasyDynamicTheme.of(context).themeMode!,
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
