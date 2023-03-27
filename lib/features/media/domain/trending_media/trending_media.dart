import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/media/domain/tmdb_media/tmdb_media.dart';

part 'trending_media.freezed.dart';

@freezed
class TrendingMedia with _$TrendingMedia {
  factory TrendingMedia({
    required String id,
    required String title,
    required String coverImage,
    required String posterImage,
    required String rating,
    required String mediaType,
    required String popularity,
    required String description,
  }) = _TrendingMedia;

  factory TrendingMedia.fromTMDBMedia(TMDBMedia tmdbMedia) {
    return TrendingMedia(
      id: tmdbMedia.id?.toString() ?? '',
      title: tmdbMedia.title.isNotEmpty ? tmdbMedia.title : tmdbMedia.name,
      coverImage: tmdbMedia.backdropPath.isNotEmpty
          ? tmdbMedia.backdropPath.toMediumSizePosterUrl
          : tmdbMedia.posterPath.toMediumSizePosterUrl,
      posterImage: tmdbMedia.posterPath.toMediumSizePosterUrl,
      rating: tmdbMedia.voteAverage.toStringAsFixed(2),
      mediaType: tmdbMedia.mediaType.toUpperCase(),
      popularity: tmdbMedia.popularity.toStringAsFixed(2),
      description: tmdbMedia.overview,
    );
  }
}
