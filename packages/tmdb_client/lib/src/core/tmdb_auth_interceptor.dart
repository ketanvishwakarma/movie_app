import 'package:dio/dio.dart';

/// This one is resposible for authenticatino of TMDB API requests
/// for more check out [TMDB API documentation](https://developer.themoviedb.org/docs/authentication-application)
class TmdbAuthInterceptor extends Interceptor {
  TmdbAuthInterceptor({
    required String apiKey,
  }) : _apiKey = apiKey;

  /// Contains TMDB API key
  final String _apiKey;

  /// Adds `apiKey` in query parameters in all API requests
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters['api_key'] = _apiKey;
    return handler.next(options);
  }
}
