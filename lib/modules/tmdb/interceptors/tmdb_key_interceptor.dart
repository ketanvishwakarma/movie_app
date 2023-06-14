import 'package:dio/dio.dart';
import 'package:movie_app/modules/tmdb/tmdb_constants.dart';

/// Adds api_key in query parameters in all API requests
class TmdbKeyInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters['api_key'] = TmdbConstants.tmdbKey;
    return handler.next(options);
  }
}
