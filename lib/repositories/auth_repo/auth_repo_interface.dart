import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mind_task/core/api_constants/api_end_points.dart';
import 'package:mind_task/core/api_constants/api_keys_constants.dart';
import 'package:mind_task/core/errors/failure.dart';
import 'package:mind_task/core/request_result/request_result.dart';
import 'package:mind_task/core/utils/api_consumer/api_consumer.dart';
import 'package:mind_task/model/user_model/user_model.dart';

part 'auth_repo_impl.dart';

abstract class AuthRepoInterface {
  Future<ResultHandler<UserModel, Failure>> login(
      String email, String password);
}
