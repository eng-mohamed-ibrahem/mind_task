part of 'auth_repo_interface.dart';

class AuthRepoImpl implements AuthRepoInterface {
  AuthRepoImpl({required ApiConsumer apiConsumer}) : _apiConsumer = apiConsumer;
  final ApiConsumer _apiConsumer;
  @override
  Future<ResultHandler<UserModel, Failure>> login(
      String email, String password) async {
    try {
      var result = await Connectivity().checkConnectivity();
      if (result.contains(ConnectivityResult.mobile) ||
          result.contains(ConnectivityResult.wifi)) {
        var result = await _apiConsumer.post(
          ApiEndPoints.login,
          isFormData: true,
          data: {
            'email': email,
            'password': password,
            "token": "asd342dsdddsd323dsdadasd3e",
            "device_id": "bfghtr5yrtytd654e6trd",
            "platform": Platform.isAndroid ? '1' : '2',
          },
        );
        return result.when(
          success: (json) {
            if (json[ApiKeysConstants.status] == true) {
              return ResultHandler.success(
                data: UserModel.fromJson(
                  json[ApiKeysConstants.data],
                ),
              );
            } else {
              return ResultHandler.failure(
                  error: ApiFailure(message: json[ApiKeysConstants.message]));
            }
          },
          failure: (failure) {
            return ResultHandler.failure(error: failure);
          },
        );
      } else {
        return ResultHandler.failure(
            error: OtherFailure(message: 'core.no_internet'.tr()));
      }
    } catch (e) {
      return ResultHandler.failure(
        error: OtherFailure(
          message: e.toString(),
        ),
      );
    }
  }
}
