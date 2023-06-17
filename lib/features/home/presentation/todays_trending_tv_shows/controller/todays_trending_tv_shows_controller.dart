import 'package:movie_app/features/home/data/home_repository.dart';
import 'package:movie_app/features/home/domain/trending_media/trending_media.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todays_trending_tv_shows_controller.g.dart';

@riverpod
FutureOr<List<TrendingMedia>> todaysTrendingTVShows(
  TodaysTrendingTVShowsRef ref,
) async {
  return ref.watch(homeRepositoryProvider).getWeeklyTrendingTVList();
}
