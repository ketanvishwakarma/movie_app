// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tmdb_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TmdbMedia _$TmdbMediaFromJson(Map<String, dynamic> json) {
  return _TmdbMedia.fromJson(json);
}

/// @nodoc
mixin _$TmdbMedia {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  List<int> get genreIds => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  String get releaseDate => throw _privateConstructorUsedError;
  double get voteAverage => throw _privateConstructorUsedError;
  int get voteCount => throw _privateConstructorUsedError;
  String get mediaType => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  String get originalLanguage => throw _privateConstructorUsedError;
  String get originalTitle => throw _privateConstructorUsedError;
  String get originalName => throw _privateConstructorUsedError;
  bool get video => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  String get backdropPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TmdbMediaCopyWith<TmdbMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TmdbMediaCopyWith<$Res> {
  factory $TmdbMediaCopyWith(TmdbMedia value, $Res Function(TmdbMedia) then) =
      _$TmdbMediaCopyWithImpl<$Res, TmdbMedia>;
  @useResult
  $Res call(
      {int? id,
      String title,
      String name,
      String overview,
      List<int> genreIds,
      double popularity,
      String releaseDate,
      double voteAverage,
      int voteCount,
      String mediaType,
      bool adult,
      String originalLanguage,
      String originalTitle,
      String originalName,
      bool video,
      String posterPath,
      String backdropPath});
}

/// @nodoc
class _$TmdbMediaCopyWithImpl<$Res, $Val extends TmdbMedia>
    implements $TmdbMediaCopyWith<$Res> {
  _$TmdbMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? name = null,
    Object? overview = null,
    Object? genreIds = null,
    Object? popularity = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? mediaType = null,
    Object? adult = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? originalName = null,
    Object? video = null,
    Object? posterPath = null,
    Object? backdropPath = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      genreIds: null == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TmdbMediaCopyWith<$Res> implements $TmdbMediaCopyWith<$Res> {
  factory _$$_TmdbMediaCopyWith(
          _$_TmdbMedia value, $Res Function(_$_TmdbMedia) then) =
      __$$_TmdbMediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String title,
      String name,
      String overview,
      List<int> genreIds,
      double popularity,
      String releaseDate,
      double voteAverage,
      int voteCount,
      String mediaType,
      bool adult,
      String originalLanguage,
      String originalTitle,
      String originalName,
      bool video,
      String posterPath,
      String backdropPath});
}

/// @nodoc
class __$$_TmdbMediaCopyWithImpl<$Res>
    extends _$TmdbMediaCopyWithImpl<$Res, _$_TmdbMedia>
    implements _$$_TmdbMediaCopyWith<$Res> {
  __$$_TmdbMediaCopyWithImpl(
      _$_TmdbMedia _value, $Res Function(_$_TmdbMedia) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? name = null,
    Object? overview = null,
    Object? genreIds = null,
    Object? popularity = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? mediaType = null,
    Object? adult = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? originalName = null,
    Object? video = null,
    Object? posterPath = null,
    Object? backdropPath = null,
  }) {
    return _then(_$_TmdbMedia(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      genreIds: null == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TmdbMedia implements _TmdbMedia {
  _$_TmdbMedia(
      {this.id,
      this.title = '',
      this.name = '',
      this.overview = '',
      final List<int> genreIds = const [],
      this.popularity = 0,
      this.releaseDate = '',
      this.voteAverage = 0,
      this.voteCount = 0,
      this.mediaType = '',
      this.adult = false,
      this.originalLanguage = '',
      this.originalTitle = '',
      this.originalName = '',
      this.video = false,
      this.posterPath = '',
      this.backdropPath = ''})
      : _genreIds = genreIds;

  factory _$_TmdbMedia.fromJson(Map<String, dynamic> json) =>
      _$$_TmdbMediaFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String overview;
  final List<int> _genreIds;
  @override
  @JsonKey()
  List<int> get genreIds {
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  @override
  @JsonKey()
  final double popularity;
  @override
  @JsonKey()
  final String releaseDate;
  @override
  @JsonKey()
  final double voteAverage;
  @override
  @JsonKey()
  final int voteCount;
  @override
  @JsonKey()
  final String mediaType;
  @override
  @JsonKey()
  final bool adult;
  @override
  @JsonKey()
  final String originalLanguage;
  @override
  @JsonKey()
  final String originalTitle;
  @override
  @JsonKey()
  final String originalName;
  @override
  @JsonKey()
  final bool video;
  @override
  @JsonKey()
  final String posterPath;
  @override
  @JsonKey()
  final String backdropPath;

  @override
  String toString() {
    return 'TmdbMedia(id: $id, title: $title, name: $name, overview: $overview, genreIds: $genreIds, popularity: $popularity, releaseDate: $releaseDate, voteAverage: $voteAverage, voteCount: $voteCount, mediaType: $mediaType, adult: $adult, originalLanguage: $originalLanguage, originalTitle: $originalTitle, originalName: $originalName, video: $video, posterPath: $posterPath, backdropPath: $backdropPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TmdbMedia &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      name,
      overview,
      const DeepCollectionEquality().hash(_genreIds),
      popularity,
      releaseDate,
      voteAverage,
      voteCount,
      mediaType,
      adult,
      originalLanguage,
      originalTitle,
      originalName,
      video,
      posterPath,
      backdropPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TmdbMediaCopyWith<_$_TmdbMedia> get copyWith =>
      __$$_TmdbMediaCopyWithImpl<_$_TmdbMedia>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TmdbMediaToJson(
      this,
    );
  }
}

abstract class _TmdbMedia implements TmdbMedia {
  factory _TmdbMedia(
      {final int? id,
      final String title,
      final String name,
      final String overview,
      final List<int> genreIds,
      final double popularity,
      final String releaseDate,
      final double voteAverage,
      final int voteCount,
      final String mediaType,
      final bool adult,
      final String originalLanguage,
      final String originalTitle,
      final String originalName,
      final bool video,
      final String posterPath,
      final String backdropPath}) = _$_TmdbMedia;

  factory _TmdbMedia.fromJson(Map<String, dynamic> json) =
      _$_TmdbMedia.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get name;
  @override
  String get overview;
  @override
  List<int> get genreIds;
  @override
  double get popularity;
  @override
  String get releaseDate;
  @override
  double get voteAverage;
  @override
  int get voteCount;
  @override
  String get mediaType;
  @override
  bool get adult;
  @override
  String get originalLanguage;
  @override
  String get originalTitle;
  @override
  String get originalName;
  @override
  bool get video;
  @override
  String get posterPath;
  @override
  String get backdropPath;
  @override
  @JsonKey(ignore: true)
  _$$_TmdbMediaCopyWith<_$_TmdbMedia> get copyWith =>
      throw _privateConstructorUsedError;
}
