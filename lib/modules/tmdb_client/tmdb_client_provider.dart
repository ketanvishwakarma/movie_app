import 'package:movie_app/constants/key.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tmdb_client/tmdb_client.dart';

part 'tmdb_client_provider.g.dart';

@riverpod
TmdbClient tmdbClient(TmdbClientRef ref) {
  return TmdbClient(
    tmdbConfiguration: const TmdbConfiguration(
      apiKey: tmdbApiKey,
    ),
  );
}
