import 'package:flutter/material.dart';
import 'package:portfolio/config/theme_data.dart';
import 'package:portfolio/core/shared_preferences.dart';

const String darkMode = 'darkMode';

class ThemeController extends ChangeNotifier {
  ThemeController() {
    _readThemeMode();
  }

  final SharedPreferencesManager _sharedPreferenceManager =
      SharedPreferencesManager();

  ThemeData _themeData = PortfolioThemes.lightThemeData;
  ThemeData get themeData => _themeData;

  void _readThemeMode() {
    bool? isDarkMode = _sharedPreferenceManager.getBool(darkMode);
    _themeData = isDarkMode == true
        ? PortfolioThemes.darkThemeData
        : PortfolioThemes.lightThemeData;
    notifyListeners();
  }

  void toggleDarkMode() {
    _themeData = _themeData == PortfolioThemes.darkThemeData
        ? PortfolioThemes.lightThemeData
        : PortfolioThemes.darkThemeData;
    _writeThemeMode();
    notifyListeners();
  }

  void _writeThemeMode() {
    _sharedPreferenceManager.setBool(
        darkMode, _themeData == PortfolioThemes.darkThemeData);
  }
}
