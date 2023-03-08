import 'package:dio/dio.dart';
import 'package:movie_app/features/media/data/sources/tmdb_api_configs.dart';
import 'package:movie_app/features/media/data/sources/tmdb_key_interceptor.dart';

class TMDBClient {
  TMDBClient({
    required Dio dio,
  }) : _dio = dio {
    _dio
      ..options.baseUrl = TMDBApiConfigs.baseUrl
      ..interceptors.add(TMDBKeyInterceptor());
  }

  final Dio _dio;

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    return _dio.get(path);
  }
}
