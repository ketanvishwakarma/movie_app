import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/modules/tmdb/tmdb_constants.dart';

part 'tmdb_media.freezed.dart';
part 'tmdb_media.g.dart';

/*
{
  "adult": false,
  "backdrop_path": "/A5JyEZvXHbPLN2cU65oB9NaIuYH.jpg",
  "id": 768362,
  "title": "Missing",
  "original_language": "en",
  "original_title": "Missing",
  "overview": "When her mother disappears while on vacation in Colombia with her new boyfriend, June’s search for answers is hindered by international red tape. Stuck thousands of miles away in Los Angeles, June creatively uses all the latest technology at her fingertips to try and find her before it’s too late. But as she digs deeper, her digital sleuthing raises more questions than answers... and when June unravels secrets about her mom, she discovers that she never really knew her at all.",
  "poster_path": "/qgZuXiDAkXdARlsDzQwmrCpkqpL.jpg",
  "media_type": "movie",
  "genre_ids": [
      53,
      9648,
      18,
      27
  ],
  "popularity": 134.015,
  "release_date": "2023-01-19",
  "video": false,
  "vote_average": 7.72,
  "vote_count": 75
},
*/

enum TMDBMediaType { all, movie, tv, person }

enum TMDBTimeWindow { day, week }

enum PosterSize {
  w92,
  w154,
  w185,
  w342,
  w500,
  w780,
  original,
}

@freezed
class TMDBMedia with _$TMDBMedia {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory TMDBMedia({
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
  }) = _TMDBMedia;

  factory TMDBMedia.fromJson(Map<String, dynamic> json) =>
      _$TMDBMediaFromJson(json);
}

extension TMDBPoster on String {
  String get toMediumSizePosterUrl {
    if (isNotEmpty) {
      return TmdbConstants.baseImageUrl + PosterSize.w780.name + this;
    } else {
      return 'https://static.vecteezy.com/system/resources/previews/005/337/799/original/icon-image-not-found-free-vector.jpg';
    }
  }
}
