import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static setInt(String key, int value) async {
    final pref = await SharedPreferences.getInstance();
    pref.setInt(key, value);
  }

  static setString(String key, String value) async {
    final pref = await SharedPreferences.getInstance();
    pref.setString(key, value);
  }

  static getInt(String key) async {
    final pref = await SharedPreferences.getInstance();
    return pref.getInt(key);
  }

  static getString(String key) async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString(key);
  }

  static logout() async {
    final pref = await SharedPreferences.getInstance();
    await pref.clear();
  }
}
