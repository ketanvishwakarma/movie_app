import 'package:dio/dio.dart';
import 'package:movie_app/core/network/logger_interceptor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio()..interceptors.add(LoggerInterceptor());
  return dio;
}
