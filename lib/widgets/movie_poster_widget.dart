import 'package:flutter/material.dart';
import 'package:movie_app/widgets/custom_cached_network_image.dart';
import 'package:movie_app/widgets/custom_shimmer.dart';

class MoviePosterWidget extends StatelessWidget {
  const MoviePosterWidget({
    super.key,
    this.path,
    this.onTap,
    this.padding = EdgeInsets.zero,
    this.width,
    this.height,
    this.borderRadius,
  });
  final String? path;
  final void Function()? onTap;
  final EdgeInsetsGeometry padding;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: padding,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Theme.of(context).cardColor,
      ),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: path == null
            ? const CustomShimmer()
            : CustomCachedNetworkImage(
                imageUrl: path!,
                imageBuilder: (context, imageProvider) {
                  return Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: onTap,
                      borderRadius: borderRadius,
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: borderRadius,
                          color: Theme.of(context).cardColor,
                          image: path != null
                              ? DecorationImage(
                                  fit: BoxFit.cover,
                                  image: imageProvider,
                                )
                              : null,
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
