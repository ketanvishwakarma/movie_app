import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/styles/app_sizes.dart';
import 'package:movie_app/core/widgets/custom_shimmer.dart';

const _fadeDuration = Duration(milliseconds: 120);

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    required this.imageUrl,
    this.boxFit,
    this.imageBuilder,
    super.key,
  });

  final String imageUrl;
  final BoxFit? boxFit;
  final Widget Function(
    BuildContext context,
    ImageProvider<Object> imageProvider,
  )? imageBuilder;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fadeInDuration: _fadeDuration,
      fadeOutDuration: _fadeDuration,
      placeholderFadeInDuration: _fadeDuration,
      fit: boxFit,
      imageBuilder: imageBuilder,
      progressIndicatorBuilder: (context, url, progress) {
        return const CustomShimmer();
      },
      errorWidget: (context, url, error) {
        return const _PlaceHolder();
      },
    );
  }
}

class _PlaceHolder extends StatelessWidget {
  const _PlaceHolder();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.smallSpace),
        child: Icon(
          Icons.photo,
          color: colorScheme.onSurface.withOpacity(0.5),
        ),
      ),
    );
  }
}
