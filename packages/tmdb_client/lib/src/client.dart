import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tmdb_client/src/core/core.dart';

/// The class that represents a client connection to the **TMDB** API.
///
/// `HTTP` calls are made through the [dio](https://pub.dev/packages/dio)
/// package, which provides a platform independent client, making the
/// [TmdbClient] platform independent as well.
///
/// For more detail see the [TMDB API documentation](https://developer.themoviedb.org/reference/intro/getting-started).
class TmdbClient {
  /// Creates a new instance of the [TmdbClient].
  ///
  /// [TmdbConfiguration] must not be `null`.
  ///
  /// If no [dio] is provided, one is created.
  TmdbClient({
    required TmdbConfiguration tmdbConfiguration,
    Dio? dio,
    this.enableLogger = true,
  }) {
    if (dio != null) {
      _dio = Dio();
      if (enableLogger) {
        _dio.interceptors.add(PrettyDioLogger());
      }
      _dio.interceptors
          .add(TmdbAuthInterceptor(apiKey: tmdbConfiguration.apiKey));
    }
  }

  /// Private [Dio] used to make the `HTTP` calls.
  late final Dio _dio;

  /// Value indicating whether the logger should be enabled.
  final bool enableLogger;
}
