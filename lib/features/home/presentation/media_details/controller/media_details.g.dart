// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_details.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mediaDetailsHash() => r'b2b85093e5e43f12330d39694f1f61f1496bf38c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef MediaDetailsRef = AutoDisposeFutureProviderRef<TmdbMediaDetails>;

/// See also [mediaDetails].
@ProviderFor(mediaDetails)
const mediaDetailsProvider = MediaDetailsFamily();

/// See also [mediaDetails].
class MediaDetailsFamily extends Family<AsyncValue<TmdbMediaDetails>> {
  /// See also [mediaDetails].
  const MediaDetailsFamily();

  /// See also [mediaDetails].
  MediaDetailsProvider call(
    String id,
    String type,
  ) {
    return MediaDetailsProvider(
      id,
      type,
    );
  }

  @override
  MediaDetailsProvider getProviderOverride(
    covariant MediaDetailsProvider provider,
  ) {
    return call(
      provider.id,
      provider.type,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'mediaDetailsProvider';
}

/// See also [mediaDetails].
class MediaDetailsProvider extends AutoDisposeFutureProvider<TmdbMediaDetails> {
  /// See also [mediaDetails].
  MediaDetailsProvider(
    this.id,
    this.type,
  ) : super.internal(
          (ref) => mediaDetails(
            ref,
            id,
            type,
          ),
          from: mediaDetailsProvider,
          name: r'mediaDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mediaDetailsHash,
          dependencies: MediaDetailsFamily._dependencies,
          allTransitiveDependencies:
              MediaDetailsFamily._allTransitiveDependencies,
        );

  final String id;
  final String type;

  @override
  bool operator ==(Object other) {
    return other is MediaDetailsProvider &&
        other.id == id &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
