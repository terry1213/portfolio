import 'package:flutter/material.dart';
import 'package:portfolio/config/theme_data.dart';
import 'package:portfolio/presentation/template_page/template_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '임연우 Flutter Developer',
      debugShowCheckedModeBanner: false,
      darkTheme: PortfolioThemes.darkThemeData,
      theme: PortfolioThemes.lightThemeData,
      home: const TemplatePage(),
    );
  }
}
