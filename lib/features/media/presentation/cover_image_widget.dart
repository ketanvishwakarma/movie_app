import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CoverImageWidget extends StatelessWidget {
  const CoverImageWidget({
    required this.path,
    super.key,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
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
      child: CachedNetworkImage(
        imageUrl: path,
        imageBuilder: (context, imageProvider) {
          return Image(
            image: imageProvider,
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
