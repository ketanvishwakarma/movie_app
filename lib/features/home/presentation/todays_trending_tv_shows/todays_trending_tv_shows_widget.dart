import 'package:flutter/material.dart';
import 'package:movie_app/constants/app_sizes.dart';
import 'package:movie_app/features/home/presentation/todays_trending_tv_shows/todays_trending_tv_shows_list_widget.dart';

class TodayTrendingTVShows extends StatelessWidget {
  const TodayTrendingTVShows({super.key});

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
            "Today's Trending TV Shows",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const TodayTrendingTVShowsListWidget()
      ],
    );
  }
}
