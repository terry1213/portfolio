import 'package:flutter/material.dart';
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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF242424),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0),
          headline6: TextStyle(fontSize: 36.0),
          bodyText2: TextStyle(fontSize: 14.0),
        ).apply(displayColor: Colors.white),
      ),
      home: TemplatePage(),
    );
  }
}