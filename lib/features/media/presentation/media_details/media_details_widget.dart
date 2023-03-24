import 'package:flutter/material.dart';
import 'package:movie_app/core/styles/app_sizes.dart';
import 'package:movie_app/core/widgets/movie_poster_widget.dart';
import 'package:movie_app/features/media/domain/trending_media/trending_media.dart';

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
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          SizedBox(
            height: 200,
            width: size.width,
            child: MoviePosterWidget(
              path: media.coverImage,
            ),
          ),
          ColoredBox(
            color: colorScheme.background,
            child: Column(
              children: [
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
