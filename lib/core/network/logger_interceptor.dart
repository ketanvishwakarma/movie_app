import 'dart:developer';

import 'package:dio/dio.dart';

class LoggerInterceptor implements Interceptor {
  
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log('❌ Dio Error!');
    log('❌ Url: ${err.requestOptions.uri}');
    if (err.stackTrace != null) {
      log('❌ ${err.stackTrace}');
    }
    log('❌ Response Error: ${err.response?.data}');
    return handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('🌍 Sending network request: ${options.baseUrl}${options.path}');
    return handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    final statusCode = response.statusCode;
    final baseUrl = response.requestOptions.baseUrl;
    final path = response.requestOptions.path;

    log('⬅️ Received network response');
    if (statusCode != 200) {
      log('❌ $statusCode ❌ $baseUrl$path');
    } else {
      log('✅ 200 ✅ $baseUrl$path');
    }
    log('Query params: ${response.requestOptions.queryParameters}');
    log('-------------------------');
    return handler.next(response);
  }
}
