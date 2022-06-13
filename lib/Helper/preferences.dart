import 'package:shared_preferences/shared_preferences.dart';

// ignore: unused_import
import 'NotificatiokKeys.dart';

var title = "Preferences";

Preferences preferences = Preferences();

class Preferences {
  Preferences._();

  static final Preferences preferences = Preferences._();

  factory Preferences() {
    return preferences;
  }

  SharedPreferences? _prefs;

  Future<SharedPreferences?> get prefs async {
    if (_prefs != null) return _prefs;

    _prefs = await SharedPreferences.getInstance();
    return _prefs;
  }

  Future<bool> saveString({required String key, required String value}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(key, value);
  }

  Future<String?> getString({required String key}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  Future<bool> saveInt({required String key, required int value}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(key, value);
  }

  Future<int?> getInt({required String key}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  Future<bool> saveBool({required String key, required bool value}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool(key, value);
  }

  Future<bool?> getBool({required String key, bool? defValue}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? defValue;
  }

  Future clearPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
