import 'package:freezed_annotation/freezed_annotation.dart';

part 'tmdb_video_details.freezed.dart';
part 'tmdb_video_details.g.dart';

@freezed
class TmdbVideoDetails with _$TmdbVideoDetails {
  factory TmdbVideoDetails({
    required String id,
    @JsonKey(name: 'iso_639_1') @Default('') String iso6391,
    @JsonKey(name: 'iso_3166_1') @Default('') String iso31661,
    @Default('') String name,
    @Default('')String key,
    @Default('')String site,
    @Default(-1)int size,
    @Default('')String type,
    @Default(false)bool official,
    @JsonKey(name: 'published_at') DateTime? publishedAt,
  }) = _TmdbVideoDetails;

  factory TmdbVideoDetails.fromJson(Map<String, dynamic> json) =>
      _$TmdbVideoDetailsFromJson(json);
}
