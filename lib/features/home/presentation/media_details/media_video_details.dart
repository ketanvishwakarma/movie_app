import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/app_sizes.dart';
import 'package:movie_app/features/home/presentation/media_details/controller/media_details.dart';
import 'package:movie_app/features/home/presentation/media_details/custom_video_player_screen.dart';
import 'package:movie_app/utils/date_time_utils.dart';
import 'package:movie_app/widgets/custom_shimmer.dart';
import 'package:movie_app/widgets/movie_poster_widget.dart';

class MediaVideoDetails extends ConsumerWidget {
  const MediaVideoDetails({
    required this.id,
    required this.mediaType,
    super.key,
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
                  style: textTheme.titleMedium,
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
                      onTap: () {
                        Navigator.push(
                          context,
                          CustomVideoPlayerScreen.pageRoute(
                            tmdbVideoDetails: videoInfo,
                          ),
                        );
                      },
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
