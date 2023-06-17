import 'package:movie_app/features/home/data/home_repository.dart';
import 'package:movie_app/features/home/domain/trending_media/trending_media.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weekly_trending_movie_list.g.dart';

@riverpod
FutureOr<List<TrendingMedia>> weeklyTrendingMovieList(
  WeeklyTrendingMovieListRef ref,
) {
  return ref.watch(homeRepositoryProvider).getWeeklyTrendingMovieList();
}
