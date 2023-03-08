enum TMDBMediaType { all, movie, tv, person }

enum TMDBTimeWindow { day, week }

class TMDBApiConfigs {
  const TMDBApiConfigs._();

  static const tmdbKey = String.fromEnvironment('TMDB_API_KEY');

  static const baseUrl = 'https://api.themoviedb.org/3';

  //endpoints
  static const trending = '/trending';
}
