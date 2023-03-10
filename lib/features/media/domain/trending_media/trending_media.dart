import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/media/domain/tmdb_media/tmdb_media.dart';

part 'trending_media.freezed.dart';

@freezed
class TrendingMedia with _$TrendingMedia {
  factory TrendingMedia({
    required String title,
    required String coverImage,
  }) = _TrendingMedia;

  factory TrendingMedia.fromTMDBMedia(TMDBMedia tmdbMedia) {
    return TrendingMedia(
      title: tmdbMedia.title.isNotEmpty
          ? tmdbMedia.title
          : tmdbMedia.name,
      coverImage: tmdbMedia.backdropPath.isNotEmpty
          ? tmdbMedia.backdropPath.toPosterUrl
          : tmdbMedia.posterPath.toPosterUrl,
    );
  }
}
