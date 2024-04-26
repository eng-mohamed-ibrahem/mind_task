import 'package:mind_task/core/errors/failure.dart';
import 'package:mind_task/core/request_result/request_result.dart';

abstract class ApiConsumer {
  Future<ResultHandler<dynamic, ApiFailure>> get(
    String endPoint, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    bool sendAuthToken = false,
    bool isFormData = false,
  });
  Future<ResultHandler<dynamic, ApiFailure>> post(
    String endPoint, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    bool sendAuthToken = false,
    bool isFormData = false,
  });
  Future<ResultHandler<dynamic, ApiFailure>> patch(
    String endPoint, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    bool sendAuthToken = false,
    bool isFormData = false,
  });
  Future<ResultHandler<dynamic, ApiFailure>> put(
    String endPoint, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    bool sendAuthToken = false,
    bool isFormData = false,
  });
  Future<ResultHandler<dynamic, ApiFailure>> delete(
    String endPoint, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    bool sendAuthToken = false,
    bool isFormData = false,
  });
}
