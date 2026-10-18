import 'package:shared_preferences/shared_preferences.dart';

class SharedprefHelper {
  static late SharedPreferences sharedPref;
  static Future<void> cacheInitialization() async {
    sharedPref = await SharedPreferences.getInstance();
  }

  static Future<bool> setData(String key, String value) async {
    return await sharedPref.setString(key, value);
  }

 static String? getData(String key) {
  return sharedPref.getString(key); 
}

  static Future<bool> deleteData({required String key}) async {
    return await sharedPref.remove(key);
  }

  static Future<bool> setBoolData(String key, bool value) async {
    return await sharedPref.setBool(key, value);
  }

  static bool? getBoolData(String key) {
    return sharedPref.getBool(key);
  }

 
}