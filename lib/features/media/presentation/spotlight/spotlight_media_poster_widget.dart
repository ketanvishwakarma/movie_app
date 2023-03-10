import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/media/presentation/spotlight/controller/spotlight_controller.dart';

class SpotlightMediaPosterWidget extends ConsumerWidget {
  const SpotlightMediaPosterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    final spotlightController = ref.watch(spotlightControllerProvider);
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeOut,
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: SizedBox(
        key: UniqueKey(),
        height: size.height * 0.4,
        width: size.width,
        child: spotlightController.when(
          data: (media) {
            if (media != null) {
              return ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      colorScheme.background,
                      Colors.transparent,
                      colorScheme.background,
                    ],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.dstOut,
                child: Image(
                  image: CachedNetworkImageProvider(media.coverImage,),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                ),
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
        ),
      ),
    );
  }
}
