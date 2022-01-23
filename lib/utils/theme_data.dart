import 'package:flutter/material.dart';

ThemeData lightThemeData = ThemeData(
  appBarTheme: AppBarTheme(
    color: Colors.blueGrey[900],
    foregroundColor: Colors.white,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomAppBarColor: Colors.blueGrey[900],
  brightness: Brightness.light,
  cardColor: Colors.blueGrey[50],
  dividerColor: Colors.blueGrey[400],
  highlightColor: Colors.transparent,
  hoverColor: Colors.transparent,
  iconTheme: const IconThemeData(
    color: Colors.blueGrey,
  ),
  primarySwatch: Colors.blueGrey,
  scaffoldBackgroundColor: Colors.white,
  selectedRowColor: Colors.blueGrey,
  splashColor: Colors.transparent,
  textTheme: textThemeLight,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.blueGrey),
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          color: Colors.blueGrey,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      visualDensity: VisualDensity.compact,
    ),
  ),
  unselectedWidgetColor: Colors.blueGrey[200],
);

ThemeData darkThemeData = ThemeData(
  appBarTheme: const AppBarTheme(
    color: Color(0xFF242424),
    foregroundColor: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomAppBarColor: const Color(0xFF242424),
  brightness: Brightness.dark,
  cardColor: Colors.white12,
  dividerColor: Colors.grey[700],
  highlightColor: Colors.transparent,
  hoverColor: Colors.transparent,
  iconTheme: IconThemeData(
    color: Colors.blueGrey[200],
  ),
  primarySwatch: Colors.blueGrey,
  scaffoldBackgroundColor: const Color(0xFF242424),
  selectedRowColor: Colors.blueGrey[400],
  splashColor: Colors.transparent,
  textTheme: textThemeDark,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.blueGrey[200]),
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      textStyle: MaterialStateProperty.all(
        TextStyle(
          color: Colors.blueGrey[200],
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      visualDensity: VisualDensity.compact,
    ),
  ),
  unselectedWidgetColor: Colors.blueGrey[800],
);

TextTheme textThemeLight = const TextTheme(
  headline1: TextStyle(
    fontFamily: 'NanumPenScript',
    fontWeight: FontWeight.normal,
    fontSize: 96,
    color: Colors.black,
  ),
  headline2: TextStyle(
    fontFamily: 'NanumPenScript',
    fontWeight: FontWeight.normal,
    fontSize: 60,
    color: Colors.black,
  ),
  headline3: TextStyle(
    fontFamily: 'NanumPenScript',
    fontWeight: FontWeight.normal,
    fontSize: 48,
    color: Colors.black,
  ),
  headline4: TextStyle(
    fontFamily: 'NotoSansKR',
    fontWeight: FontWeight.normal,
    fontSize: 34,
    color: Colors.black,
  ),
  headline5: TextStyle(
    fontFamily: 'NotoSansKR',
    fontWeight: FontWeight.normal,
    fontSize: 24,
    color: Colors.black,
  ),
  headline6: TextStyle(
    fontFamily: 'NotoSansKR',
    fontWeight: FontWeight.normal,
    fontSize: 20,
    color: Colors.black,
  ),
  bodyText1: TextStyle(
    fontFamily: 'NotoSansKR',
    fontWeight: FontWeight.normal,
    fontSize: 20,
    color: Colors.black,
  ),
  bodyText2: TextStyle(
    fontFamily: 'NotoSansKR',
    fontWeight: FontWeight.normal,
    fontSize: 16,
    height: 2,
    color: Colors.black,
  ),
);

TextTheme textThemeDark = const TextTheme(
  headline1: TextStyle(
    fontFamily: 'NanumPenScript',
    fontWeight: FontWeight.normal,
    fontSize: 96,
    color: Colors.white,
  ),
  headline2: TextStyle(
    fontFamily: 'NanumPenScript',
    fontWeight: FontWeight.normal,
    fontSize: 60,
    color: Colors.white,
  ),
  headline3: TextStyle(
    fontFamily: 'NanumPenScript',
    fontWeight: FontWeight.normal,
    fontSize: 48,
    color: Colors.white,
  ),
  headline4: TextStyle(
    fontFamily: 'NotoSansKR',
    fontWeight: FontWeight.normal,
    fontSize: 34,
    color: Colors.white,
  ),
  headline5: TextStyle(
    fontFamily: 'NotoSansKR',
    fontWeight: FontWeight.normal,
    fontSize: 24,
    color: Colors.white,
  ),
  headline6: TextStyle(
    fontFamily: 'NotoSansKR',
    fontWeight: FontWeight.normal,
    fontSize: 20,
    color: Colors.white,
  ),
  bodyText1: TextStyle(
    fontFamily: 'NotoSansKR',
    fontWeight: FontWeight.normal,
    fontSize: 20,
    color: Colors.white,
  ),
  bodyText2: TextStyle(
    fontFamily: 'NotoSansKR',
    fontWeight: FontWeight.normal,
    fontSize: 16,
    height: 2,
    color: Colors.white,
  ),
);
