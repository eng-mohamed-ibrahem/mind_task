import 'dart:convert';

import 'package:mind_task/core/cache_constants/cache_constants.dart';
import 'package:mind_task/core/errors/failure.dart';
import 'package:mind_task/core/request_result/request_result.dart';
import 'package:mind_task/core/utils/dependency_locator/dependency_injection.dart';
import 'package:mind_task/data_source/user_repo_data_source/user_repo_source_inteface.dart';

class CacheUserRepoSource implements UserRepoDataSourceInterface {
  @override
  Future<ResultHandler<Map<String, dynamic>, CacheFailure>>
      getUserData() async {
    try {
      return ResultHandler.success(
        data: jsonDecode(
            kSharedPreferences.getString(CacheConstants.userCacheKey)!),
      );
    } catch (e) {
      return ResultHandler.failure(error: CacheFailure(message: e.toString()));
    }
  }

  @override
  Future<ResultHandler<bool, CacheFailure>> setUserData(
      Map<String, dynamic> user) async {
    try {
      return await kSharedPreferences
          .setString(
        CacheConstants.userCacheKey,
        jsonEncode(
          user,
        ),
      )
          .then(
        (added) {
          return ResultHandler.success(data: added);
        },
      );
    } catch (e) {
      return ResultHandler.failure(error: CacheFailure(message: e.toString()));
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    return kSharedPreferences.containsKey(CacheConstants.userCacheKey);
  }
}
