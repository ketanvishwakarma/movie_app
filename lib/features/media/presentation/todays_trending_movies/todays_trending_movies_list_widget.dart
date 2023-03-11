import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/styles/app_sizes.dart';
import 'package:movie_app/core/widgets/movie_poster_widget.dart';
import 'package:movie_app/features/media/presentation/todays_trending_movies/controller/todays_trending_movies_controller.dart';

class TodayTrendingMoviesListWidget extends ConsumerWidget {
  const TodayTrendingMoviesListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 180,
      width: double.maxFinite,
      child: ref.watch(todaysTrendingMoviesProvider).maybeWhen(
            data: (list) {
              return ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: AppSizes.largeSpace),
                children: list
                    .map(
                      (media) => MoviePosterWidget(
                        onTap: () {},
                        path: media.posterImage,
                      ),
                    )
                    .toList(growable: false),
              );
            },
            orElse: () => ListView(
              scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: AppSizes.largeSpace),
              children: List.generate(
                3,
                growable: false,
                (_) => const MoviePosterWidget(),
              ),
            ),
          ),
    );
  }
}
