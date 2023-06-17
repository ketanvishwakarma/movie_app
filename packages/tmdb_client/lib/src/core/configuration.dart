import 'package:meta/meta.dart';

/// Sets required configs for API calls
@immutable
class TmdbConfiguration {
  /// Creates a new [TmdbConfiguration].
  ///
  /// The `apiKey` is required to use the API.
  const TmdbConfiguration({
    required this.apiKey,
  });

  /// Used to authenticate with the API.
  final String apiKey;
}
