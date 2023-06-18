import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/app_sizes.dart';
import 'package:movie_app/features/home/domain/trending_media/trending_media.dart';
import 'package:movie_app/features/home/presentation/media_details/controller/media_details.dart';
import 'package:movie_app/features/home/presentation/media_details/media_main_highlights.dart';
import 'package:movie_app/utils/date_time_utils.dart';
import 'package:movie_app/widgets/custom_shimmer.dart';
import 'package:movie_app/widgets/movie_poster_widget.dart';

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
                  _MoreVideoDetails(
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

class _MoreVideoDetails extends ConsumerWidget {
  const _MoreVideoDetails({
    required this.id,
    required this.mediaType,
  });

  final String id;
  final String mediaType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return ref.watch(mediaDetailsProvider.call(id, mediaType)).when(
      data: (tmdbMediaDetails) {
        final videos = tmdbMediaDetails.videos;

        if (videos.isEmpty) {
          return const SizedBox.shrink();
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.largeSpace,
                ),
                child: Text(
                  'Trailers & More',
                  style: textTheme.titleLarge,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: videos.length,
                itemBuilder: (context, index) {
                  final videoInfo = videos.elementAt(index);
                  return Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Ink(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: AppSizes.mediumSpace,
                            horizontal: AppSizes.largeSpace,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: MoviePosterWidget(
                                  aspectRatio: 16 / 9,
                                  borderRadius: BorderRadius.circular(6),
                                  path: videoInfo.youtubeThumbnailUrl,
                                ),
                              ),
                              gapWMedium,
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      videoInfo.name,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: textTheme.titleSmall,
                                    ),
                                    if (videoInfo.publishedAt != null)
                                      Text(
                                        videoInfo.publishedAt!.toTimeAgoString,
                                        maxLines: 4,
                                        style: textTheme.bodySmall,
                                      ),
                                    Text(
                                      videoInfo.site,
                                      maxLines: 4,
                                      style: textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          );
        }
      },
      error: (error, stackTrace) {
        return const SizedBox.shrink();
      },
      loading: () {
        return const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.largeSpace,
          ),
          child: Column(
            children: [
              CustomShimmer(
                height: 100,
              ),
              gapHMedium,
              CustomShimmer(
                height: 100,
              ),
              gapHMedium,
              CustomShimmer(
                height: 100,
              ),
            ],
          ),
        );
      },
    );
  }
}
