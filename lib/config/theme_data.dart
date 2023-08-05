import 'package:flutter/material.dart';

class PortfolioThemes {
  static const TextTheme textThemeLight = TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'NanumPenScript',
      fontWeight: FontWeight.normal,
      fontSize: 96,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontFamily: 'NanumPenScript',
      fontWeight: FontWeight.normal,
      fontSize: 60,
      color: Colors.black,
    ),
    displaySmall: TextStyle(
      fontFamily: 'NanumPenScript',
      fontWeight: FontWeight.normal,
      fontSize: 48,
      color: Colors.black,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'NotoSansKR',
      fontWeight: FontWeight.normal,
      fontSize: 34,
      color: Colors.black,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'NotoSansKR',
      fontWeight: FontWeight.normal,
      fontSize: 24,
      color: Colors.black,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'NotoSansKR',
      fontWeight: FontWeight.normal,
      fontSize: 20,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'NotoSansKR',
      fontWeight: FontWeight.normal,
      fontSize: 20,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'NotoSansKR',
      fontWeight: FontWeight.normal,
      fontSize: 16,
      height: 2,
      color: Colors.black,
    ),
  );

  static const TextTheme textThemeDark = TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'NanumPenScript',
      fontWeight: FontWeight.normal,
      fontSize: 96,
      color: Colors.white,
    ),
    displayMedium: TextStyle(
      fontFamily: 'NanumPenScript',
      fontWeight: FontWeight.normal,
      fontSize: 60,
      color: Colors.white,
    ),
    displaySmall: TextStyle(
      fontFamily: 'NanumPenScript',
      fontWeight: FontWeight.normal,
      fontSize: 48,
      color: Colors.white,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'NotoSansKR',
      fontWeight: FontWeight.normal,
      fontSize: 34,
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'NotoSansKR',
      fontWeight: FontWeight.normal,
      fontSize: 24,
      color: Colors.white,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'NotoSansKR',
      fontWeight: FontWeight.normal,
      fontSize: 20,
      color: Colors.white,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'NotoSansKR',
      fontWeight: FontWeight.normal,
      fontSize: 20,
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'NotoSansKR',
      fontWeight: FontWeight.normal,
      fontSize: 16,
      height: 2,
      color: Colors.white,
    ),
  );

  static final ThemeData lightThemeData = ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.blueGrey[900],
      foregroundColor: Colors.white,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
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
    bottomAppBarTheme: BottomAppBarTheme(
      color: Colors.blueGrey[900],
    ),
  );

  static final ThemeData darkThemeData = ThemeData(
    appBarTheme: const AppBarTheme(
      color: Color(0xFF242424),
      foregroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
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
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Color(0xFF242424),
    ),
  );
}
