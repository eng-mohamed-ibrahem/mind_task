import 'package:mind_task/core/errors/failure.dart';
import 'package:mind_task/core/request_result/request_result.dart';

abstract class UserRepoDataSourceInterface {
  Future<bool> isLoggedIn();
  Future<ResultHandler<Map<String, dynamic>, CacheFailure>> getUserData();
  Future<ResultHandler<bool, CacheFailure>> setUserData(Map<String, dynamic> user);
}
