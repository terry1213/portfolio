import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  static final SharedPreferencesManager _instance =
      SharedPreferencesManager._();

  factory SharedPreferencesManager() {
    return _instance;
  }

  SharedPreferencesManager._();

  late SharedPreferences prefs;

  init() async {
    prefs = await SharedPreferences.getInstance();
  }

  bool? getBool(String key) => prefs.getBool(key);

  Future<bool> setBool(String key, bool value) => prefs.setBool(key, value);
}
