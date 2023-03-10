import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/media/presentation/cover_image_widget.dart';
import 'package:movie_app/features/media/presentation/spotlight/controller/spotlight_controller.dart';

class SpotlightMediaPosterWidget extends StatelessWidget {
  const SpotlightMediaPosterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AnimatedSwitcher(
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
        child: Consumer(
          builder: (_, ref, __) {
            final spotlightController = ref.watch(spotlightControllerProvider);
            return spotlightController.when(
              data: (media) {
                if (media != null) {
                  return CoverImageWidget(
                    path: media.coverImage,
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
              error: (error, stackTrace) {
                return Text(error.toString());
              },
              loading: () => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            );
          },
        ),
      ),
    );
  }
}
