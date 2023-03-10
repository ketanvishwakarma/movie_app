import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/media/presentation/spotlight/controller/spotlight_controller.dart';

class SpotlightMediaDetailsWidget extends StatelessWidget {
  const SpotlightMediaDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Consumer(
              builder: (_, ref, __) {
                final spotlightController =
                    ref.watch(spotlightControllerProvider);
                return spotlightController.maybeWhen(
                  data: (media) {
                    if (media != null) {
                      return Column(
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
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            '${media.mediaType} • ${media.rating} Rating',
                            style: textTheme.titleSmall,
                          )
                        ],
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                  orElse: SizedBox.shrink,
                );
              },
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          SizedBox(
            width: 180,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Check Out Now'),
            ),
          )
        ],
      ),
    );
  }
}
