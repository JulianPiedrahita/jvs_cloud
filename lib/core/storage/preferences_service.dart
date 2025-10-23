import 'package:shared_preferences/shared_preferences.dart';

import '../constants/app_constants.dart';

/// Abstract interface for preferences storage operations
abstract class PreferencesService {
  Future<void> setThemeMode(String themeMode);
  Future<String?> getThemeMode();
  Future<void> setLanguage(String language);
  Future<String?> getLanguage();
  Future<void> setBool(String key, bool value);
  Future<bool?> getBool(String key);
  Future<void> setString(String key, String value);
  Future<String?> getString(String key);
  Future<void> setInt(String key, int value);
  Future<int?> getInt(String key);
  Future<void> setDouble(String key, double value);
  Future<double?> getDouble(String key);
  Future<void> setStringList(String key, List<String> value);
  Future<List<String>?> getStringList(String key);
  Future<void> remove(String key);
  Future<void> clear();
}

/// Implementation of PreferencesService using shared_preferences
class PreferencesServiceImpl implements PreferencesService {
  final SharedPreferences _preferences;

  PreferencesServiceImpl(this._preferences);

  @override
  Future<void> setThemeMode(String themeMode) async {
    await _preferences.setString(AppConstants.themeKey, themeMode);
  }

  @override
  Future<String?> getThemeMode() async {
    return _preferences.getString(AppConstants.themeKey);
  }

  @override
  Future<void> setLanguage(String language) async {
    await _preferences.setString(AppConstants.languageKey, language);
  }

  @override
  Future<String?> getLanguage() async {
    return _preferences.getString(AppConstants.languageKey);
  }

  @override
  Future<void> setBool(String key, bool value) async {
    await _preferences.setBool(key, value);
  }

  @override
  Future<bool?> getBool(String key) async {
    return _preferences.getBool(key);
  }

  @override
  Future<void> setString(String key, String value) async {
    await _preferences.setString(key, value);
  }

  @override
  Future<String?> getString(String key) async {
    return _preferences.getString(key);
  }

  @override
  Future<void> setInt(String key, int value) async {
    await _preferences.setInt(key, value);
  }

  @override
  Future<int?> getInt(String key) async {
    return _preferences.getInt(key);
  }

  @override
  Future<void> setDouble(String key, double value) async {
    await _preferences.setDouble(key, value);
  }

  @override
  Future<double?> getDouble(String key) async {
    return _preferences.getDouble(key);
  }

  @override
  Future<void> setStringList(String key, List<String> value) async {
    await _preferences.setStringList(key, value);
  }

  @override
  Future<List<String>?> getStringList(String key) async {
    return _preferences.getStringList(key);
  }

  @override
  Future<void> remove(String key) async {
    await _preferences.remove(key);
  }

  @override
  Future<void> clear() async {
    await _preferences.clear();
  }
}