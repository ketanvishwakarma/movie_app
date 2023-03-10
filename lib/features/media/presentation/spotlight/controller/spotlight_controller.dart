import 'dart:async';

import 'package:movie_app/features/media/application/media_service.dart';
import 'package:movie_app/features/media/domain/trending_media/trending_media.dart';
import 'package:movie_app/features/media/presentation/spotlight/controller/spotlight_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'spotlight_controller.g.dart';

@riverpod
class SpotlightController extends _$SpotlightController {
  Timer? _timer;

  @override
  SpotlightState build() {
    ref.watch(mediaServiceProvider);
    _fetchSpotlightMediaList();
    ref.onDispose(dispose);
    return SpotlightState(
      currentIndex: 0,
      trendingMediaList: const AsyncData([]),
    );
  }

  Future<void> _fetchSpotlightMediaList() async {
    state = SpotlightState(
      currentIndex: 0,
      trendingMediaList: const AsyncLoading(),
    );
    try {
      final list =
          await ref.watch(mediaServiceProvider).getSpotlightMediaList();
      if (list.isNotEmpty) {
        _startSpotlightSlides(list);
      }
      state = state.copyWith(
        trendingMediaList: AsyncData(list),
      );
    } on Exception catch (e) {
      state = state.copyWith(
        trendingMediaList: AsyncError(e.toString(), StackTrace.current),
      );
    }
  }

  void _startSpotlightSlides(List<TrendingMedia> list) {
    _timer = Timer.periodic(const Duration(seconds: 5), (_) async {
      state = state.copyWith(
        currentIndex: _getNextIndex(list.length),
      );
    });
  }

  void dispose() {
    _timer?.cancel();
  }

  int _getNextIndex(int length) {
    if (state.currentIndex + 1 == length) {
      return 0;
    } else {
      return state.currentIndex + 1;
    }
  }
}
