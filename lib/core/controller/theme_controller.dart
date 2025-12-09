import 'package:flutter/material.dart';
import 'package:portfolio/config/theme_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String darkMode = 'darkMode';

class ThemeController extends ChangeNotifier {
  final SharedPreferences _sharedPreferences;

  ThemeController(this._sharedPreferences) {
    _readThemeMode();
  }

  ThemeData _themeData = PortfolioThemes.lightThemeData;

  ThemeData get themeData => _themeData;

  void _readThemeMode() {
    bool? isDarkMode = _sharedPreferences.getBool(darkMode);
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
    _sharedPreferences.setBool(
        darkMode, _themeData == PortfolioThemes.darkThemeData);
  }
}
