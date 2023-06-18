// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_client/src/domain/genre/genre.dart';
import 'package:tmdb_client/src/domain/tmdb_video_details/tmdb_video_details.dart';

part 'tmdb_media_details.freezed.dart';
part 'tmdb_media_details.g.dart';

@freezed
class TmdbMediaDetails with _$TmdbMediaDetails {
  const factory TmdbMediaDetails({
    @Default(-1) int budget,
    @Default([]) List<Genre> genres,
    @Default('') String homepage,
    @Default(-1) int id,
    @JsonKey(name: 'release_date') @Default('') String releaseDate,
    @Default(-1) int revenue,
    @Default(-1) int runtime,
    @Default('') String status,
    @Default('') String tagline,
    @Default('') String title,
    @Default([]) List<TmdbVideoDetails> videos,
  }) = _TmdbMediaDetails;

  factory TmdbMediaDetails.fromJson(Map<String, dynamic> json) =>
      _$TmdbMediaDetailsFromJson(json);
}
