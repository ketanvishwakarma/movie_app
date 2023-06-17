import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_client/src/core/enums.dart';

part 'tmdb_media.freezed.dart';
part 'tmdb_media.g.dart';

@freezed
class TmdbMedia with _$TmdbMedia {
  factory TmdbMedia({
    int? id,
    @Default('') String title,
    @Default('') String name,
    @Default('') String overview,
    @Default([]) List<int> genreIds,
    @Default(0) double popularity,
    @Default('') String releaseDate,
    @Default(0) double voteAverage,
    @Default(0) int voteCount,
    @Default('') String mediaType,
    @Default(false) bool adult,
    @Default('') String originalLanguage,
    @Default('') String originalTitle,
    @Default('') String originalName,
    @Default(false) bool video,
    @Default('') String posterPath,
    @Default('') String backdropPath,
  }) = _TmdbMedia;

  factory TmdbMedia.fromJson(Map<String, dynamic> json) =>
      _$TmdbMediaFromJson(json);
}

extension TmdbPoster on String {
  String get toMediumSizePosterUrl {
    if (isNotEmpty) {
      return 'http://image.tmdb.org/t/p/${PosterSize.w780.name}$this';
    } else {
      return 'https://static.vecteezy.com/system/resources/previews/005/337/799/original/icon-image-not-found-free-vector.jpg';
    }
  }
}
