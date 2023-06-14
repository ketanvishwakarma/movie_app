import 'package:flutter/material.dart';
import 'package:movie_app/constants/app_sizes.dart';
import 'package:movie_app/features/media/presentation/spotlight/spotlight_widget.dart';
import 'package:movie_app/features/media/presentation/todays_trending_movies/todays_trending_movies_widget.dart';
import 'package:movie_app/features/media/presentation/todays_trending_tv_shows/todays_trending_tv_shows_widget.dart';

class MediaScreen extends StatelessWidget {
  const MediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SpotlightWidget(),
            gapHMedium,
            TodayTrendingMovies(),
            gapHMedium,
            TodayTrendingTVShows(),
            gapHLarge,
          ],
        ),
      ),
    );
  }
}
