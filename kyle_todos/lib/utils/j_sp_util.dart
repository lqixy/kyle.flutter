import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class JSpUtil {
  JSpUtil._internal();

  factory JSpUtil() => _instance;

  static late final JSpUtil _instance = JSpUtil._internal();

  static late SharedPreferences _preferences;

  static Future<JSpUtil> getInstance() async {
    _preferences = await SharedPreferences.getInstance();
    return _instance;
  }

  /// 能用设置持久化数据
  static setLocalStorage<T>(String key, T value) {
    String type = value.runtimeType.toString();

    switch (type) {
      case 'String':
        setString(key, value as String);
        break;
      case 'int':
        setInt(key, value as int);
        break;
      case 'bool':
        setBool(key, value as bool);
        break;
      case 'double':
        setDouble(key, value as double);
        break;
      case "List<String>":
        setStringList(key, value as List<String>);
        break;
      case "_InternalLinkedHashMap<String, String>":
        setMap(key, value as Map);
        break;
    }
  }

  static dynamic getLocalStorage<T>(String key) {
    dynamic value = _preferences.get(key);
    if (value.runtimeType.toString() == 'String') {
      if (_isJson(value)) {
        return json.decode(value);
      }
    }
  }

  static Future<bool> setInt(String key, int value) {
    return _preferences.setInt(key, value);
  }

  static int? getInt(String key, {int defaultValue = 0}) {
    return _preferences.getInt(key) ?? defaultValue;
  }

  static Future<bool> setDouble(String key, double value) {
    return _preferences.setDouble(key, value);
  }

  static double? getDouble(String key, {double defaultValue = 0.0}) {
    return _preferences.getDouble(key) ?? defaultValue;
  }

  static Future<bool> setString(String key, String value) {
    return _preferences.setString(key, value);
  }

  static String? getString(String key, {String defaultValue = ''}) {
    return _preferences.getString(key) ?? defaultValue;
  }

  static Future<bool> setBool(String key, bool value) {
    return _preferences.setBool(key, value);
  }

  static bool? getBool(String key, {bool defaultValue = false}) {
    return _preferences.getBool(key) ?? defaultValue;
  }

  static Future<bool> setStringList(String key, List<String> value) {
    return _preferences.setStringList(key, value);
  }

  static List<String> getStringList(String key,
      {List<String> defaultValue = const []}) {
    return _preferences.getStringList(key) ?? defaultValue;
  }

  static Future<bool> setMap(String key, Map value) {
    var mapString = json.encode(value);
    return _preferences.setString(key, mapString);
  }

  static Map getMap(String key) {
    String jsonStr = _preferences.getString(key) ?? '';
    return jsonStr.isEmpty ? Map : json.decode(jsonStr);
  }

  static _isJson(String value) {
    try {
      JsonDecoder().convert(value);
      return true;
    } catch (e) {
      return false;
    }
  }
}
