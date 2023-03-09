import 'package:freezed_annotation/freezed_annotation.dart';

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

@freezed
class TMDBMedia with _$TMDBMedia {
  factory TMDBMedia({
    required bool adult,
    required int id,
    required String title,
    required String originalLanguage,
    required String originalTitle,
    required String overview,
    required String mediaType,
    required List<int> genreIds,
    required double popularity,
    required String releaseDate,
    required bool video,
    required double voteAverage,
    required int voteCount,
    String? posterPath,
    String? backdropPath,
  }) = _TMDBMedia;

  factory TMDBMedia.fromJson(Map<String, dynamic> json) =>
      _$TMDBMediaFromJson(json);
}
