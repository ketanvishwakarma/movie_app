import 'package:movie_app/core/network/dio_provider.dart';
import 'package:movie_app/features/media/data/sources/tmdb_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tmdb_client_provider.g.dart';

@riverpod
TMDBClient tMDBClient(TMDBClientRef ref) {
  return TMDBClient(dio: ref.read(dioProvider));
}
