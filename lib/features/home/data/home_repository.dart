import 'package:movie_app/features/home/domain/trending_media/trending_media.dart';
import 'package:movie_app/modules/tmdb_client/tmdb_client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tmdb_client/tmdb_client.dart';

part 'home_repository.g.dart';

@riverpod
HomeRepository homeRepository(HomeRepositoryRef ref) {
  return HomeRepository(ref.read(tmdbClientProvider));
}

class HomeRepository {
  HomeRepository(this._tmdbClient);

  final TmdbClient _tmdbClient;

  Future<List<TrendingMedia>> getSpotlightMediaList() async {
    final list = await _tmdbClient.trending.getTrendingMediaList(
      mediaType: TmdbMediaType.all,
      timeWindow: TmdbTimeWindow.day,
    );
    if (list.isNotEmpty) {
      return list.map(TrendingMedia.fromTmdbMedia).toList();
    } else {
      return [];
    }
  }

  Future<List<TrendingMedia>> getWeeklyTrendingMovieList() async {
    final list = await _tmdbClient.trending.getTrendingMediaList(
      mediaType: TmdbMediaType.movie,
      timeWindow: TmdbTimeWindow.week,
    );
    if (list.isNotEmpty) {
      return list.map(TrendingMedia.fromTmdbMedia).toList();
    } else {
      return [];
    }
  }

  Future<List<TrendingMedia>> getWeeklyTrendingTVList() async {
    final list = await _tmdbClient.trending.getTrendingMediaList(
      mediaType: TmdbMediaType.tv,
      timeWindow: TmdbTimeWindow.week,
    );
    if (list.isNotEmpty) {
      return list.map(TrendingMedia.fromTmdbMedia).toList();
    } else {
      return [];
    }
  }
}
