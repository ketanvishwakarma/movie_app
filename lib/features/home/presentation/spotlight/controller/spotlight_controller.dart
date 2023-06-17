import 'dart:async';

import 'package:movie_app/features/home/data/home_repository.dart';
import 'package:movie_app/features/home/domain/trending_media/trending_media.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'spotlight_controller.g.dart';

@riverpod
class SpotlightController extends _$SpotlightController {
  Timer? _timer;
  int _currentIndex = 0;

  @override
  AsyncValue<TrendingMedia?> build() {
    fetchSpotlightMediaList();
    ref.onDispose(dispose);
    return const AsyncLoading();
  }

  Future<void> fetchSpotlightMediaList() async {
    try {
      final list =
          await ref.watch(homeRepositoryProvider).getSpotlightMediaList();
      if (list.isNotEmpty) {
        state = AsyncData(list.elementAt(_currentIndex));
        _startSpotlightSlides(list);
      } else {
        state = const AsyncData(null);
      }
    } on Exception catch (e) {
      state = AsyncError(e.toString(), StackTrace.current);
    }
  }

  void _startSpotlightSlides(List<TrendingMedia> list) {
    _timer = Timer.periodic(const Duration(seconds: 5), (_) async {
      _currentIndex = getNextIndex(list.length);
      state = AsyncData(list.elementAt(_currentIndex));
    });
  }

  void dispose() {
    _timer?.cancel();
  }

  int getNextIndex(int length) {
    if (_currentIndex + 1 == length) {
      return 0;
    } else {
      return _currentIndex + 1;
    }
  }
}
