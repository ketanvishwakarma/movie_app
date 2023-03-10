import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/media/domain/trending_media/trending_media.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'spotlight_state.freezed.dart';

@freezed
class SpotlightState with _$SpotlightState {
  factory SpotlightState({
    required int currentIndex,
    required AsyncValue<List<TrendingMedia>> trendingMediaList,
  }) = _SpotlightState;
}
