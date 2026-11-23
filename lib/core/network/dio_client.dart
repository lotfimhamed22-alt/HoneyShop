// ignore_for_file: unnecessary_null_comparison

import 'package:dio/dio.dart';
import 'package:honeyshop/core/utils/pref_helpers.dart';

class DioClient {
  // Base options
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "https://supermarket-dan1.onrender.com/api/v1",
      // headers
    ),
  );
  // interseptor
  DioClient() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await PrefHelper.getToken();
          if (token != null && token.isNotEmpty) {
            options.headers["Authorization"] = "Bearer $token";
          }
          handler.next(options);
        },
      ),
    );
  }

  //
  Dio get dio => _dio;
}
