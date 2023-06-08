import 'package:flutter/material.dart';
import 'package:movie_app/core/styles/app_sizes.dart';
import 'package:movie_app/core/widgets/movie_poster_widget.dart';
import 'package:movie_app/features/media/domain/trending_media/trending_media.dart';
import 'package:movie_app/features/media/presentation/media_details/media_main_highlights.dart';

class MediaDetailWidget extends StatelessWidget {
  const MediaDetailWidget({
    required this.media,
    required this.scrollController,
    super.key,
  });

  final TrendingMedia media;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: [
          MoviePosterWidget(
            height: 220,
            width: size.width,
            path: media.coverImage,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.largeSpace,
            ),
            color: colorScheme.background,
            child: Column(
              children: [
                gapHMedium,
                MediaMainHighLights(media: media),
                gapHMedium,
                Container(
                  height: 100,
                  color: colorScheme.surface,
                ),
                gapHMedium,
                Container(
                  height: 100,
                  color: colorScheme.surface,
                ),
                gapHMedium,
                Container(
                  height: 100,
                  color: colorScheme.surface,
                ),
                gapHMedium,
                Container(
                  height: 100,
                  color: colorScheme.surface,
                ),
                gapHMedium,
                Container(
                  height: 100,
                  color: colorScheme.surface,
                ),
                gapHMedium,
                Container(
                  height: 100,
                  color: colorScheme.surface,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
