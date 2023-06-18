import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/app_sizes.dart';
import 'package:movie_app/features/home/domain/trending_media/trending_media.dart';
import 'package:movie_app/features/home/presentation/media_details/media_details_widget.dart';
import 'package:movie_app/features/home/presentation/spotlight/controller/spotlight_controller.dart';
import 'package:movie_app/widgets/custom_shimmer.dart';
import 'package:movie_app/widgets/draggable_scaffold.dart';
import 'package:movie_app/widgets/k_draggable_screen_bottom_sheet.dart';

class SpotlightMediaDetailsWidget extends StatelessWidget {
  const SpotlightMediaDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.mediumSpace),
        child: Consumer(
          builder: (_, ref, __) {
            final spotlightController = ref.watch(spotlightControllerProvider);
            return spotlightController.maybeWhen(
              data: (media) {
                if (media != null) {
                  return Column(
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
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
              loading: () {
                return Column(
                  children: [
                    CustomShimmer(
                      height: 40,
                      width: size.width * 0.4,
                    ),
                    gapHMedium,
                    CustomShimmer(
                      height: 40,
                      width: size.width * 0.8,
                    ),
                  ],
                );
              },
              orElse: SizedBox.shrink,
            );
          },
        ),
      ),
    );
  }

  void onCheckOutNowTap(BuildContext context, TrendingMedia media) {
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
