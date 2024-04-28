import 'package:mind_task/core/cache_constants/cache_constants.dart';
import 'package:mind_task/core/utils/dependency_locator/dependency_injection.dart';

class CacheService {
  CacheService._();
  static Future<bool> saveAuthKey(String value) async {
    return kSharedPreferences.setString(CacheConstants.authKey, value);
  }

  static String get authKey {
    return kSharedPreferences.getString(CacheConstants.authKey) ?? '';
  }

  static Future<bool> saveUserId(String value) async {
    return kSharedPreferences.setString(CacheConstants.userId, value);
  }

  static String get userId {
    return kSharedPreferences.getString(CacheConstants.userId) ?? '';
  }

  static Future<bool> saveLang(String value) async {
    return kSharedPreferences.setString(CacheConstants.lang, value);
  }

  static String get lang {
    return kSharedPreferences.getString(CacheConstants.lang) ?? 'en';
  }
}
