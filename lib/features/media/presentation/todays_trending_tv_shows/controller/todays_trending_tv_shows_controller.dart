import 'package:movie_app/features/media/application/media_service.dart';
import 'package:movie_app/features/media/domain/trending_media/trending_media.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todays_trending_tv_shows_controller.g.dart';

@riverpod
FutureOr<List<TrendingMedia>> todaysTrendingTVShows(
  TodaysTrendingTVShowsRef ref,
) async {
  return ref.watch(mediaServiceProvider).getTodaysTrendingTVShowsList();
}
