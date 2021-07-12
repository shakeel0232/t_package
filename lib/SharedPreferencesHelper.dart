import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static String sharedPreferenceUserLoggedInKey = "ISLOGGEDIN";
  static Future<bool> getUserLoggedInSharedPreference() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getBool(sharedPreferenceUserLoggedInKey);
  }
  static Future<bool> saveUserLoggedInSharedPreference(bool isUserLoggedIn) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setBool(sharedPreferenceUserLoggedInKey, isUserLoggedIn);
  }

  static  Future<String> getPrefs(String key)  async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString(key);
    return stringValue;
  }
  static Future<dynamic> savePrefs(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }
  static Future<dynamic> clearPrefs() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await  preferences.clear();
  }
  static Future<dynamic> clearOnePrefs(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove(key);
  }
}