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

  static Future<void> setInt(String key, int value) async {
    await preferences.setInt(key, value);
  }

  static int getInt(String key) {
    return preferences.getInt(key);
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

  static List<String> getStringList(String key) {
    return preferences.getStringList(key);
  }

  static bool containsStringList(String key, String item) {
    var rt = preferences.getStringList(key);
    for (var r in rt) if (r == item) return true;
    return false;
  }

  static Future<void> addToStringList(String key, String item) async {
    if (containsKey(key)) {
      var rt = getStringList(key);
      for (var r in rt) if (r == item) return;
      rt.add(item);
      await setStringList(key, rt);
      return;
    }
    var rt = List<String>();
    rt.add(item);
    await setStringList(key, rt);
  }

  static Future<void> editStringList(
      String key, String newItem, String prevItem) async {
    if (containsKey(key)) {
      var rt = getStringList(key);
      for (var r in rt) {
        if (r == prevItem) {
          rt.remove(r);
          break;
        }
      }
      await addToStringList(key, newItem);
      return;
    }
    var rt = List<String>();
    rt.add(newItem);
    await setStringList(key, rt);
  }

  static Future<void> deleteStringList(String key, String item) async {
    if (containsKey(key)) {
      var rt = getStringList(key);
      for (var r in rt) {
        if (r == item) {
          rt.remove(r);
          break;
        }
      }
      await setStringList(key, rt);
    }
  }

  static Future<void> clearValue(String key) async {
    if (containsKey(key)) {
      await preferences.remove(key);
    }
  }

  static Future<void> setStringList(String key, List<String> items) async {
    await preferences.setStringList(key, items);
  }

  static String termAndConditionSettedKey = 'termandconditionsetted';
  static String appVersionKey = 'appversion';
  static String productFavorite = 'productfavorite';
  static String lastOrderKey = 'lastorderkey';
}
