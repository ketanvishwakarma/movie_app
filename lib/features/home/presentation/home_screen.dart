import 'package:flutter/material.dart';
import 'package:movie_app/constants/app_sizes.dart';
import 'package:movie_app/features/home/presentation/spotlight/spotlight_widget.dart';
import 'package:movie_app/features/home/presentation/todays_trending_movies/weekly_trending_movies_widget.dart';
import 'package:movie_app/features/home/presentation/todays_trending_tv_shows/todays_trending_tv_shows_widget.dart';

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
            WeeklyTrendingMoviesWidget(),
            gapHMedium,
            TodayTrendingTVShows(),
            gapHLarge,
          ],
        ),
      ),
    );
  }
}
