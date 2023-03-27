// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/media/domain/genre/genre.dart';
import 'package:movie_app/features/media/domain/video/video.dart';

part 'tmdb_media_details.freezed.dart';
part 'tmdb_media_details.g.dart';

@freezed
class TMDBMediaDetails with _$TMDBMediaDetails {
  const factory TMDBMediaDetails({
    int? budget,
    List<Genre>? genres,
    String? homepage,
    int? id,
    @JsonKey(name: 'release_date') String? releaseDate,
    int? revenue,
    int? runtime,
    String? status,
    String? tagline,
    String? title,
    List<Video>? videos,
  }) = _TMDBMediaDetails;

  factory TMDBMediaDetails.fromJson(Map<String, dynamic> json) =>
      _$TMDBMediaDetailsFromJson(json);
}
