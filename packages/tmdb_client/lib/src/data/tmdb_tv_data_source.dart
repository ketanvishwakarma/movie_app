import 'package:dio/dio.dart';
import 'package:tmdb_client/src/core/endpoints.dart';
import 'package:tmdb_client/src/domain/tmdb_media_details/tmdb_media_details.dart';

class TmdbTVDataSource {
  TmdbTVDataSource(this._client);

  final Dio _client;

  Future<TmdbMediaDetails> getById({
    required String id,
    bool includeVideoDetails = false,
  }) async {
    final path = '/$tv/$id';

    final queryParameters = <String, dynamic>{};

    if (includeVideoDetails) {
      queryParameters.addAll(
        {'append_to_response': 'videos'},
      );
    }

    final response = await _client.get<Map<String, dynamic>>(
      path,
      queryParameters: queryParameters,
    );
    if (response.data == null) {
      throw Exception('No data found');
    } else {
      return TmdbMediaDetails.fromJson(response.data!);
    }
  }
}
