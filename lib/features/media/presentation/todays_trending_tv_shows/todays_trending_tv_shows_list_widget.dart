import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/styles/app_sizes.dart';
import 'package:movie_app/core/widgets/draggable_scaffold.dart';
import 'package:movie_app/core/widgets/k_draggable_screen_bottom_sheet.dart';
import 'package:movie_app/core/widgets/movie_poster_widget.dart';
import 'package:movie_app/features/media/domain/trending_media/trending_media.dart';
import 'package:movie_app/features/media/presentation/media_details/media_details_widget.dart';
import 'package:movie_app/features/media/presentation/todays_trending_tv_shows/controller/todays_trending_tv_shows_controller.dart';

class TodayTrendingTVShowsListWidget extends ConsumerWidget {
  const TodayTrendingTVShowsListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 180,
      width: double.maxFinite,
      child: ref.watch(todaysTrendingTVShowsProvider).maybeWhen(
            data: (list) {
              return ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: AppSizes.largeSpace),
                children: list
                    .map(
                      (media) => MoviePosterWidget(
                        padding:
                            const EdgeInsets.only(right: AppSizes.mediumSpace),
                        onTap: () => onMediaTap(context, media),
                        path: media.posterImage,
                      ),
                    )
                    .toList(growable: false),
              );
            },
            orElse: () => ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: AppSizes.largeSpace),
              children: List.generate(
                3,
                growable: false,
                (_) => const MoviePosterWidget(),
              ),
            ),
          ),
    );
  }

  void onMediaTap(BuildContext context, TrendingMedia media) {
    kDraggableScreenBottomSheet(
      context: context,
      child: DraggableScaffold(
        title: media.title,
        builder: (context, scrollController) {
          return MediaDetailWidget(
            media: media,
            scrollController: scrollController,
          );
        },
      ),
    );
  }
}
