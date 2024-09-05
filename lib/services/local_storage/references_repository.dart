abstract class PreferencesRepository {
  Future<bool> setString(String key, String value);
  Future<String?> getString(String key);
  Future<bool> setBool(String key, bool value);
  Future<bool?> getBool(String key);
  Future<void> resetAll();
  Future<Map<String, String>> readAll();
  Future<void> deleteKey(String key);
}
