import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.freezed.dart';
part 'video.g.dart';

@freezed
class Video with _$Video {
  factory Video({
    @JsonKey(name: 'iso_639_1') String? iso6391,
    @JsonKey(name: 'iso_3166_1') String? iso31661,
    String? name,
    String? key,
    String? site,
    int? size,
    String? type,
    bool? official,
    @JsonKey(name: 'published_at') DateTime? publishedAt,
    String? id,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
