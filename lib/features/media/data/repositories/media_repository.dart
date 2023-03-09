import 'package:movie_app/core/network/api_result.dart';
import 'package:movie_app/features/media/data/sources/tmdb_api_configs.dart';
import 'package:movie_app/features/media/data/sources/tmdb_client.dart';
import 'package:movie_app/features/media/domain/tmdb_media/tmdb_media.dart';
import 'package:movie_app/features/media/domain/tmdb_paginated_response/tmdb_paginated_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'media_repository.g.dart';

@riverpod
MediaRepository mediaRepository(MediaRepositoryRef ref) {
  return MediaRepository(tmdbClient: ref.read(tMDBClientProvider));
}

class MediaRepository {
  MediaRepository({
    required TMDBClient tmdbClient,
  }) : _client = tmdbClient;

  final TMDBClient _client;

  Future<ApiResult<List<TMDBMedia>>> getTodaysTrendingMovies() async {
    final path =
        '${TMDBApiConfigs.trending}/${TMDBMediaType.movie}/${TMDBTimeWindow.day}';
    try {
      final response = await _client.get<Map<String, dynamic>>(path);
      if (response.data == null) {
        return const ApiResult.failure('No data found');
      } else {
        final paginatedResponse =
            TMDBPaginatedResponse.fromJson(response.data!);
        return ApiResult.success(
          paginatedResponse.results.map(TMDBMedia.fromJson).toList(),
        );
      }
    } on Exception catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
