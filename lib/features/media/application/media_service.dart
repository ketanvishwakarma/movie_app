import 'package:movie_app/features/media/data/repositories/media_repository.dart';
import 'package:movie_app/features/media/domain/tmdb_media/tmdb_media.dart';
import 'package:movie_app/features/media/domain/trending_media/trending_media.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'media_service.g.dart';

@riverpod
MediaService mediaService(MediaServiceRef ref) {
  return MediaService(mediaRepository: ref.watch(mediaRepositoryProvider));
}

class MediaService {
  const MediaService({
    required this.mediaRepository,
  });

  final MediaRepository mediaRepository;

  Future<List<TrendingMedia>> getSpotlightMediaList() async {
    final list = await mediaRepository.getTrendingMediaList(
      mediaType: TMDBMediaType.all,
      timeWindow: TMDBTimeWindow.day,
    );
    return list.map(TrendingMedia.fromTMDBMedia).toList();
  }
}
