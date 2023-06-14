import 'package:flutter/material.dart';
import 'package:movie_app/constants/app_sizes.dart';
import 'package:movie_app/features/media/presentation/todays_trending_movies/todays_trending_movies_list_widget.dart';

class TodayTrendingMovies extends StatelessWidget {
  const TodayTrendingMovies({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.largeSpace,
            vertical: AppSizes.mediumSpace,
          ),
          child: Text(
            "Today's Trending Movies",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const TodayTrendingMoviesListWidget()
      ],
    );
  }
}
