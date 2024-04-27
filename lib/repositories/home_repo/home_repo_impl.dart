part of 'home_repo_interface.dart';

class HomeRepoImpl implements HomeRepoInterface {
  HomeRepoImpl({required ApiConsumer apiConsumer}) : _apiConsumer = apiConsumer;
  final ApiConsumer _apiConsumer;
  @override
  Future<ResultHandler<HomeModel, Failure>> getHomeData() async {
    try {
      var result = await Connectivity().checkConnectivity();

      if (result.contains(ConnectivityResult.mobile) ||
          result.contains(ConnectivityResult.wifi)) {
        var result = await _apiConsumer.post(
          ApiEndPoints.home,
          isFormData: true,
          data: {
            CacheConstants.authKey: CacheService.authKey,
            CacheConstants.userId: CacheService.userId,
          },
        );
        return result.when(
          success: (json) {
            if (json[ApiKeysConstants.status] == true) {
              return ResultHandler.success(
                data: HomeModel.fromJson(json[ApiKeysConstants.data]),
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
      return ResultHandler.failure(error: OtherFailure(message: e.toString()));
    }
  }
}
