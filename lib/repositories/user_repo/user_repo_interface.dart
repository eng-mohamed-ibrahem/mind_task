import 'package:mind_task/core/errors/failure.dart';
import 'package:mind_task/core/request_result/request_result.dart';
import 'package:mind_task/data_source/user_repo_data_source/user_repo_source_inteface.dart';
import 'package:mind_task/model/user_model/user_model.dart';

part 'user_repo_impl.dart';

abstract class UserRepoInterface {
  Future<bool> isLoggedIn();

  Future<ResultHandler<UserModel, Failure>> getUserData();

  Future<ResultHandler<bool, Failure>> setUserData(UserModel user);
}
