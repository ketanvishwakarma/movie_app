import 'package:dio/dio.dart';
import 'package:movie_app/core/network/dio_provider.dart';
import 'package:movie_app/features/media/data/sources/tmdb_api_configs.dart';
import 'package:movie_app/features/media/data/sources/tmdb_key_interceptor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tmdb_client.g.dart';

@riverpod
TMDBClient tMDBClient(TMDBClientRef ref) {
  return TMDBClient(dio: ref.read(dioProvider));
}

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
    return _dio.get(
      path,
      queryParameters: queryParameters,
    );
  }
}
