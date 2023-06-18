import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/app_sizes.dart';
import 'package:movie_app/features/home/domain/trending_media/trending_media.dart';
import 'package:movie_app/features/home/presentation/media_details/media_details_screen.dart';
import 'package:movie_app/features/home/presentation/spotlight/controller/spotlight_controller.dart';
import 'package:movie_app/widgets/custom_shimmer.dart';

class SpotlightMediaDetailsWidget extends StatelessWidget {
  const SpotlightMediaDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Consumer(
        builder: (_, ref, __) {
          final spotlightController = ref.watch(spotlightControllerProvider);
          return spotlightController.maybeWhen(
            data: (media) {
              if (media != null) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.mediumSpace,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (media.title.contains(':'))
                        Text(
                          media.title.split(':').first.trim(),
                          style: textTheme.headlineSmall,
                          textAlign: TextAlign.center,
                        ),
                      Text(
                        media.title.split(':').last.trim(),
                        style: textTheme.headlineLarge,
                        textAlign: TextAlign.center,
                      ),
                      gapHMedium,
                      MediaDetailsRow(media: media),
                      gapHMedium,
                      SizedBox(
                        width: 180,
                        child: ElevatedButton(
                          onPressed: () =>
                              onCheckOutNowTap.call(context, media),
                          child: const Text('Check Out Now'),
                        ),
                      )
                    ],
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
            loading: () {
              return Container(
                height: size.height * 0.16,
                width: size.width,
                color: colorScheme.background,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    gapHMedium,
                    CustomShimmer(
                      height: textTheme.headlineLarge!.fontSize,
                      width: size.width * 0.4,
                    ),
                    gapHMedium,
                    CustomShimmer(
                      height: textTheme.titleMedium!.fontSize,
                      width: size.width * 0.8,
                    ),
                    gapHMedium,
                    CustomShimmer(
                      height: textTheme.headlineLarge!.fontSize,
                      width: size.width * 0.6,
                    ),
                  ],
                ),
              );
            },
            orElse: SizedBox.shrink,
          );
        },
      ),
    );
  }

  void onCheckOutNowTap(BuildContext context, TrendingMedia media) {
    MediaDetailScreen.show(
      context: context,
      media: media,
    );
  }
}

class MediaDetailsRow extends StatelessWidget {
  const MediaDetailsRow({
    required this.media,
    super.key,
  });

  final TrendingMedia media;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          CupertinoIcons.star_fill,
          size: textTheme.titleSmall!.fontSize,
        ),
        Text(
          '  ${media.rating}',
          style: textTheme.titleSmall,
        ),
        Text(
          '  •  ${media.mediaType}  •  ',
          style: textTheme.titleSmall,
        ),
        Icon(
          CupertinoIcons.flame_fill,
          size: textTheme.titleSmall!.fontSize,
        ),
        Text(
          '  ${media.popularity}',
          style: textTheme.titleSmall,
        ),
      ],
    );
  }
}
