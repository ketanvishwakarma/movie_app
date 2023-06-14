import 'package:dio/dio.dart';
import 'package:movie_app/modules/dio/dio_provider.dart';
import 'package:movie_app/modules/tmdb/interceptors/tmdb_key_interceptor.dart';
import 'package:movie_app/modules/tmdb/tmdb_constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tmdb_dio_provider.g.dart';

@riverpod
Dio tmdbDio(TmdbDioRef ref) {
  return ref.read(dioProvider)
    ..options.baseUrl = TmdbConstants.baseUrl
    ..interceptors.add(TmdbKeyInterceptor());
}
