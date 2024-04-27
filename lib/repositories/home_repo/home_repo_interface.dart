import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mind_task/core/api_constants/api_end_points.dart';
import 'package:mind_task/core/api_constants/api_keys_constants.dart';
import 'package:mind_task/core/cache_constants/cache_constants.dart';
import 'package:mind_task/core/request_result/request_result.dart';
import 'package:mind_task/core/utils/api_consumer/api_consumer.dart';
import 'package:mind_task/core/utils/local_database/cache_service.dart';
import 'package:mind_task/model/home_model/home_model.dart';

import '../../core/errors/failure.dart';

part 'home_repo_impl.dart';

abstract class HomeRepoInterface {
  Future<ResultHandler<HomeModel, Failure>> getHomeData();
}
