import 'dart:async';

import 'package:movie_app/features/media/application/media_service.dart';
import 'package:movie_app/features/media/domain/trending_media/trending_media.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'spotlight_controller.g.dart';

@riverpod
class SpotlightController extends _$SpotlightController {
  Timer? timer;
  int currentIndex = 0;

  @override
  AsyncValue<TrendingMedia?> build() {
    ref.watch(mediaServiceProvider);
    fetchSpotlightMediaList();
    ref.onDispose(dispose);
    return const AsyncLoading();
  }

  Future<void> fetchSpotlightMediaList() async {
    try {
      final list =
          await ref.watch(mediaServiceProvider).getSpotlightMediaList();
      if (list.isNotEmpty) {
        state = AsyncData(list.elementAt(currentIndex));
        _startSpotlightSlides(list);
      } else {
        state = const AsyncData(null);
      }
    } on Exception catch (e) {
      state = AsyncError(e.toString(), StackTrace.current);
    }
  }

  void _startSpotlightSlides(List<TrendingMedia> list) {
    timer = Timer.periodic(const Duration(seconds: 5), (_) async {
      currentIndex = getNextIndex(list.length);
      state = AsyncData(list.elementAt(currentIndex));
    });
  }

  void dispose() {
    timer?.cancel();
  }

  int getNextIndex(int length) {
    if (currentIndex + 1 == length) {
      return 0;
    } else {
      return currentIndex + 1;
    }
  }
}
