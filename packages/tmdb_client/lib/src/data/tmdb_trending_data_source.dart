import 'package:dio/dio.dart';
import 'package:tmdb_client/src/core/endpoints.dart';
import 'package:tmdb_client/src/core/enums.dart';
import 'package:tmdb_client/src/domain/tmdb_media/tmdb_media.dart';
import 'package:tmdb_client/src/domain/tmdb_paginated_response/tmdb_paginated_response.dart';

class TmdbTrendingDataSource {
  TmdbTrendingDataSource(this._client);

  final Dio _client;

  Future<List<TmdbMedia>> getTrendingMediaList({
    required TmdbMediaType mediaType,
    required TmdbTimeWindow timeWindow,
  }) async {
    final path = '$trending/${mediaType.name}/${timeWindow.name}';

    final response = await _client.get<Map<String, dynamic>>(path);
    if (response.data == null) {
      throw Exception('No data found');
    } else {
      final paginatedResponse = TmdbPaginatedResponse.fromJson(response.data!);
      return paginatedResponse.results.map(TmdbMedia.fromJson).toList();
    }
  }
}
