import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:movie_app/features/media/presentation/cover_image_widget.dart';
import 'package:movie_app/features/media/presentation/spotlight/controller/spotlight_controller.dart';

class SpotlightWidget extends ConsumerWidget {
  const SpotlightWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final spotlightController = ref.watch(spotlightControllerProvider);

    return spotlightController.trendingMediaList.when(
      data: (list) {
        if (list.isEmpty) {
          return const SizedBox.shrink();
        }
        final media = list.elementAt(spotlightController.currentIndex);
        return SizedBox(
          height: size.height * 0.5,
          width: size.width,
          child: Stack(
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                child: SizedBox(
                  height: size.height * 0.4,
                  width: size.width,
                  child: CoverImageWidget(
                    path: media.coverImage,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        media.title.replaceFirst(': ', '\n'),
                        style: Theme.of(context).textTheme.displaySmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      '${media.mediaType} • ${media.rating} Rating',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 40),
                      ),
                      onPressed: () {},
                      child: const Text('Check out now'),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        return Text(error.toString());
      },
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
