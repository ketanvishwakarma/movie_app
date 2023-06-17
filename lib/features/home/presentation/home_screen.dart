import 'package:flutter/material.dart';
import 'package:movie_app/constants/app_sizes.dart';
import 'package:movie_app/features/home/presentation/spotlight/spotlight_widget.dart';
import 'package:movie_app/features/home/presentation/weekly_trending_movie_list/weekly_trending_movie_list_widget.dart';
import 'package:movie_app/features/home/presentation/weekly_trending_tv_show_list/weekly_trending_tv_show_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SpotlightWidget(),
            gapHMedium,
            WeeklyTrendingMovieListWidget(),
            gapHMedium,
            WeeklyTrendingTVShowListWidget(),
            gapHLarge,
          ],
        ),
      ),
    );
  }
}
