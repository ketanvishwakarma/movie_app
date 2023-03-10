class TMDBApiConfigs {
  const TMDBApiConfigs._();

  static const tmdbKey = String.fromEnvironment('TMDB_API_KEY');

  static const baseUrl = 'https://api.themoviedb.org/3';

  static const baseImageUrl = 'http://image.tmdb.org/t/p/';

  //endpoints
  static const trending = '/trending';
}
