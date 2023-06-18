import 'package:flutter/material.dart';
import 'package:movie_app/constants/app_sizes.dart';
import 'package:movie_app/features/home/domain/trending_media/trending_media.dart';
import 'package:movie_app/features/home/presentation/media_details/media_main_highlights.dart';
import 'package:movie_app/features/home/presentation/media_details/media_video_details.dart';
import 'package:movie_app/widgets/draggable_scaffold.dart';
import 'package:movie_app/widgets/k_draggable_screen_bottom_sheet.dart';
import 'package:movie_app/widgets/movie_poster_widget.dart';

class MediaDetailScreen extends StatelessWidget {
  const MediaDetailScreen({
    required this.media,
    required this.scrollController,
    super.key,
  });

  static void show({
    required BuildContext context,
    required TrendingMedia media,
  }) {
    kDraggableScreenBottomSheet(
      context: context,
      child: DraggableScaffold(
        title: media.title,
        builder: (context, scrollController) {
          return MediaDetailScreen(
            media: media,
            scrollController: scrollController,
          );
        },
      ),
    );
  }

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
            height: size.height * 0.25,
            width: size.width,
            path: media.coverImage,
          ),
          ColoredBox(
            color: colorScheme.background,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: size.height * 0.65,
              ),
              child: Column(
                children: [
                  gapHMedium,
                  MediaMainHighLights(media: media),
                  gapHLarge,
                  MediaVideoDetails(
                    id: media.id,
                    mediaType: media.mediaType,
                  ),
                  gapHLarge,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
