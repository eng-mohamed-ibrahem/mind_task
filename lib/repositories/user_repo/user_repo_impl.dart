part of 'user_repo_interface.dart';

class UserRepoImpl implements UserRepoInterface {
  UserRepoImpl({required UserRepoDataSourceInterface userRepoDataSource})
      : _userRepoDataSource = userRepoDataSource;
  final UserRepoDataSourceInterface _userRepoDataSource;

  @override
  Future<ResultHandler<UserModel, Failure>> getUserData() async {
    try {
      var userJsonObject = await _userRepoDataSource.getUserData();
      return userJsonObject.when(
        success: (json) {
          return ResultHandler.success(data: UserModel.fromJson(json));
        },
        failure: (failure) {
          return ResultHandler.failure(error: failure);
        },
      );
    } catch (e) {
      return ResultHandler.failure(error: OtherFailure(message: e.toString()));
    }
  }

  @override
  Future<ResultHandler<bool, Failure>> setUserData(UserModel user) async {
    try {
      return await _userRepoDataSource.setUserData(user.toJson());
    } catch (e) {
      return ResultHandler.failure(error: OtherFailure(message: e.toString()));
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    return await _userRepoDataSource.isLoggedIn();
  }
}
