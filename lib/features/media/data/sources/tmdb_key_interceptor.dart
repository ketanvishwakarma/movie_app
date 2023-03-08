import 'package:dio/dio.dart';
import 'package:movie_app/features/media/data/sources/tmdb_api_configs.dart';

/// Adds api_key in query parameters in all API requests
class TMDBKeyInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters['api_key'] = TMDBApiConfigs.tmdbKey;
    return handler.next(options);
  }
}
