import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/app_sizes.dart';
import 'package:movie_app/features/home/domain/trending_media/trending_media.dart';
import 'package:movie_app/features/home/presentation/media_details/media_details_widget.dart';
import 'package:movie_app/features/home/presentation/weekly_trending_tv_show_list/controller/weekly_trending_tv_show_list.dart';
import 'package:movie_app/widgets/draggable_scaffold.dart';
import 'package:movie_app/widgets/k_draggable_screen_bottom_sheet.dart';
import 'package:movie_app/widgets/movie_poster_widget.dart';

class WeeklyTrendingTVShowListWidget extends StatelessWidget {
  const WeeklyTrendingTVShowListWidget({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.largeSpace,
            vertical: AppSizes.mediumSpace,
          ),
          child: Text(
            'Weekly Trending TV Shows',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const _ListWidget()
      ],
    );
  }
}

class _ListWidget extends ConsumerWidget {
  const _ListWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 180,
      width: double.maxFinite,
      child: ref.watch(weeklyTrendingTVShowListProvider).maybeWhen(
            data: (list) {
              return ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: AppSizes.largeSpace),
                children: list
                    .map(
                      (media) => MoviePosterWidget(
                        padding:
                            const EdgeInsets.only(right: AppSizes.mediumSpace),
                        borderRadius: BorderRadius.circular(6),
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
                (_) => MoviePosterWidget(
                  padding: const EdgeInsets.only(right: AppSizes.mediumSpace),
                  borderRadius: BorderRadius.circular(6),
                ),
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
