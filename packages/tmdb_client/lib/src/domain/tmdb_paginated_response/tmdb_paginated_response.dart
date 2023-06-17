import 'package:freezed_annotation/freezed_annotation.dart';

part 'tmdb_paginated_response.freezed.dart';
part 'tmdb_paginated_response.g.dart';

@freezed
class TmdbPaginatedResponse with _$TmdbPaginatedResponse {
  factory TmdbPaginatedResponse({
    required int page,
    required List<Map<String, dynamic>> results,
    required int totalPages,
    required int totalResults,
  }) = _TmdbPaginatedResponse;

  factory TmdbPaginatedResponse.fromJson(Map<String, dynamic> json) =>
      _$TmdbPaginatedResponseFromJson(json);
}

extension TmdbMoviesResponseX on TmdbPaginatedResponse {
  bool get isEmpty => !hasResults();

  bool hasResults() {
    return results.isNotEmpty;
  }
}
