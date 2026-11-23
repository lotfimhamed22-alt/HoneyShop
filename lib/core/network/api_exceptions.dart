import 'package:dio/dio.dart';
import 'package:honeyshop/core/network/api_error.dart';

class ApiExceptions {
  static ApiError handleError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectionTimeout:
        return ApiError(errorMessage: "Bad Connection");
      case DioErrorType.badResponse:
        return ApiError(errorMessage: error.toString());
      default:
        return ApiError(errorMessage: "something went wrong");
    }
  }
}
