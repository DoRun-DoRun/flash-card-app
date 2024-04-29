import 'dart:convert';

import 'package:flash_card_app/repository/base_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class BaseSharedRepository<T> extends BaseRepository<T> {
  late SharedPreferences _prefs;
  late String _prefsKey;

  BaseSharedRepository() {
    init();
  }

  Future<void> init() async {
    _prefsKey = T.toString();
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  Future<T?> get() async {
    final jsonString = _prefs.getString(_prefsKey);
    if (jsonString != null) {
      final Map<String, dynamic> jsonMap = json.decode(jsonString);
      return fromJson(jsonMap);
    }
    return null;
  }

  @override
  Future<void> save(T model) async {
    final jsonString = toJson(model);
    await _prefs.setString(_prefsKey, jsonString);
  }

  @override
  Future<void> delete() async {
    await _prefs.remove(_prefsKey);
  }

  T fromJson(Map<String, dynamic> jsonMap);

  String toJson(T value);
}
