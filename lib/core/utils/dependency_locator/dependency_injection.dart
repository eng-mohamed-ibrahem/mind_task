import 'package:get_it/get_it.dart';
import 'package:mind_task/core/api_constants/api_end_points.dart';
import 'package:mind_task/core/utils/api_consumer/dio_consumer.dart';
import 'package:mind_task/data_source/user_repo_data_source/cache_user_repo_source_impl.dart';
import 'package:mind_task/repositories/auth_repo/auth_repo_interface.dart';
import 'package:mind_task/repositories/home_repo/home_repo_interface.dart';
import 'package:mind_task/repositories/user_repo/user_repo_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt _getIt = GetIt.instance;

Future setUpLocator() async {
  _getIt.registerSingleton<AuthRepoInterface>(
    AuthRepoImpl(
      apiConsumer: DioConsumer(baseUrl: ApiEndPoints.baseUrl),
    ),
  );
  var prefs = await SharedPreferences.getInstance();
  _getIt.registerSingleton<SharedPreferences>(prefs);
  _getIt.registerSingleton<UserRepoInterface>(
    UserRepoImpl(userRepoDataSource: CacheUserRepoSource()),
  );
  _getIt.registerSingleton<HomeRepoInterface>(
    HomeRepoImpl(apiConsumer: DioConsumer(baseUrl: ApiEndPoints.baseUrl)),
  );
}

var kAuthRepo = _getIt<AuthRepoInterface>();
var kSharedPreferences = _getIt<SharedPreferences>();
var kUserRepo = _getIt<UserRepoInterface>();
var kHomeRepo = _getIt<HomeRepoInterface>();
