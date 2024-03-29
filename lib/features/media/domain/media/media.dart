import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/home/domain/trending_media/trending_media.dart';
import 'package:movie_app/features/media/domain/tmdb_media_details/tmdb_media_details/tmdb_media_details.dart';

part 'media.freezed.dart';

@freezed
class Media with _$Media {
  factory Media({
    required TrendingMedia highlights,
    @Default(TMDBMediaDetails()) TMDBMediaDetails details,
  }) = _Media;
}
