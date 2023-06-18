import 'package:flutter/material.dart';
import 'package:movie_app/constants/app_sizes.dart';
import 'package:movie_app/features/home/domain/trending_media/trending_media.dart';
import 'package:movie_app/features/home/presentation/spotlight/spotlight_media_details_widget.dart';
import 'package:movie_app/widgets/movie_poster_widget.dart';
import 'package:readmore/readmore.dart';

class MediaMainHighLights extends StatelessWidget {
  const MediaMainHighLights({
    required this.media,
    super.key,
  });

  final TrendingMedia media;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.largeSpace,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 140,
            child: Row(
              children: [
                MoviePosterWidget(
                  path: media.posterImage,
                  borderRadius: BorderRadius.circular(6),
                ),
                gapWLarge,
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        media.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.titleLarge,
                      ),
                      gapHMedium,
                      MediaDetailsRow(media: media),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.playlist_add,
                            ),
                            Text(' Save '),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          gapHMedium,
          ReadMoreText(
            '${media.description}  ',
            style: textTheme.bodyMedium,
            moreStyle: textTheme.titleMedium,
            lessStyle: textTheme.titleMedium,
            trimMode: TrimMode.Line,
            trimLines: 3,
            colorClickableText: colorScheme.secondary,
          ),
        ],
      ),
    );
  }
}
