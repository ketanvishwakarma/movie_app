import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomShimmer extends StatelessWidget {
  const CustomShimmer({
    super.key,
    this.height,
    this.width,
    this.margin,
  });

  final double? height;
  final double? width;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: margin,
      height: height,
      width: width,
      color: theme.cardColor.withOpacity(0.5),
    )
        .animate(
          onPlay: (controller) => controller.repeat(),
        )
        .shimmer(
          color: theme.colorScheme.onSurface.withOpacity(0.1),
          duration: 800.ms,
          size: 10,
        );
  }
}
