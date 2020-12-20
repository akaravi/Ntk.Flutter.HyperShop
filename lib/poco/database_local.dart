import 'package:shared_preferences/shared_preferences.dart';

class LocalDatabase {
  static Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  static SharedPreferences preferences;
  static Future<void> setString(String key, String value) async {
    await preferences.setString(key, value);
  }

  static String getString(String key) {
    return preferences.getString(key);
  }

  static Future<void> setBool(String key, bool value) async {
    await preferences.setBool(key, value);
  }

  static bool getBool(String key) {
    return preferences.getBool(key);
  }

  static bool containsKey(String key) {
    return preferences.containsKey(key);
  }

  static String termAndConditionSettedKey = 'termandconditionsetted';
}
