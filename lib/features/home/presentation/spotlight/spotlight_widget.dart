import 'package:flutter/material.dart';

import 'package:movie_app/features/home/presentation/spotlight/spotlight_media_details_widget.dart';
import 'package:movie_app/features/home/presentation/spotlight/spotlight_media_poster_widget.dart';

class SpotlightWidget extends StatelessWidget {
  const SpotlightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.5,
      width: size.width,
      child: const Stack(
        children: [
          SpotlightMediaPosterWidget(),
          SpotlightMediaDetailsWidget()
        ],
      ),
    );
  }
}
