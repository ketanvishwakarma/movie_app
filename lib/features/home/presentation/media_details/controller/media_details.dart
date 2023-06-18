import 'package:movie_app/features/home/data/home_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tmdb_client/tmdb_client.dart';

part 'media_details.g.dart';

enum Type { tv, movie }

extension YouTubeMedia on TmdbVideoDetails {
  String get youtubeThumbnailUrl =>
      'https://img.youtube.com/vi/$key/sddefault.jpg';

  String get youtubeVideoUrl => 'https://www.youtube.com/watch?v=$key';
}

@riverpod
FutureOr<TmdbMediaDetails> mediaDetails(
  MediaDetailsRef ref,
  String id,
  String type,
) {
  if (type.toLowerCase() == Type.movie.name) {
    return ref.watch(homeRepositoryProvider).getMovieDetails(id);
  } else {
    return ref.watch(homeRepositoryProvider).getTVShowDetails(id);
  }
}
