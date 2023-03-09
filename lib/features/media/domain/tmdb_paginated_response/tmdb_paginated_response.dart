// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tmdb_paginated_response.freezed.dart';
part 'tmdb_paginated_response.g.dart';

/*
{
  "page": 1,
  "results": 
  [
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
  ],
  "total_pages": 1000,
  "total_results": 20000
}
*/
@freezed
class TMDBPaginatedResponse with _$TMDBPaginatedResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory TMDBPaginatedResponse({
    required int page,
    required List<Map<String, dynamic>> results,
    required int totalPages,
    required int totalResults,
  }) = _TMDBPaginatedResponse;

  factory TMDBPaginatedResponse.fromJson(Map<String, dynamic> json) =>
      _$TMDBPaginatedResponseFromJson(json);
}

extension TMDBMoviesResponseX on TMDBPaginatedResponse {
  bool get isEmpty => !hasResults();

  bool hasResults() {
    return results.isNotEmpty;
  }
}
