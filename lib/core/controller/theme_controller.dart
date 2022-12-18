import 'package:flutter/material.dart';
import 'package:portfolio/config/theme_data.dart';

class ThemeController extends ChangeNotifier {
  ThemeData themeData = PortfolioThemes.lightThemeData;

  void toggleDarkMode() {
    themeData = themeData == PortfolioThemes.lightThemeData
        ? PortfolioThemes.darkThemeData
        : PortfolioThemes.lightThemeData;
    notifyListeners();
  }
}
