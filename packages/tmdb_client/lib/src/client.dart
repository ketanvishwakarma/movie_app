import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tmdb_client/src/core/configuration.dart';
import 'package:tmdb_client/src/core/endpoints.dart';
import 'package:tmdb_client/src/core/tmdb_auth_interceptor.dart';
import 'package:tmdb_client/src/data/tmdb_trending.dart';

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
    bool enableLogger = true,
  }) : _enableLogger = enableLogger {
    if (dio == null) {
      _dio = Dio()..options.baseUrl = baseTmdbUrl;
      if (_enableLogger) {
        _dio.interceptors.add(
          PrettyDioLogger(
            logPrint: (object) {
              log(object.toString());
            },
          ),
        );
      }
      _dio.interceptors
          .add(TmdbAuthInterceptor(apiKey: tmdbConfiguration.apiKey));
    }
  }

  /// Private [Dio] used to make the `HTTP` calls.
  late final Dio _dio;

  /// Value indicating whether the logger should be enabled.
  final bool _enableLogger;

  TmdbTrending get trending => TmdbTrending(_dio);
}
