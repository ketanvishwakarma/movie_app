import 'package:flutter/material.dart';
import 'package:movie_app/styles/app_colors.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get darkTheme {
    return ThemeData.from(
      useMaterial3: true,
      colorScheme: ColorScheme.dark(
        primary: AppColors.primary,
        background: AppColors.background,
        onBackground: AppColors.primaryVariant,
        surface: AppColors.backgroundVariant,
        surfaceVariant: AppColors.backgroundVariant,
        surfaceTint: Colors.transparent,
      ),
    ).copyWith(
      appBarTheme: const AppBarTheme(
        color: AppColors.background,
      ),
      splashFactory: InkSplash.splashFactory,
    );
  }
}
