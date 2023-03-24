import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MoviePosterWidget extends StatelessWidget {
  const MoviePosterWidget({
    super.key,
    this.path,
    this.onTap,
    this.padding = EdgeInsets.zero,
  });
  final String? path;
  final void Function()? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(6),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Theme.of(context).cardColor,
              image: path != null
                  ? DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                        path!,
                      ),
                    )
                  : null,
            ),
          ),
        ),
      ),
    );
  }
}
