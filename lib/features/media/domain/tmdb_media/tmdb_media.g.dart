// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TMDBMedia _$$_TMDBMediaFromJson(Map<String, dynamic> json) => _$_TMDBMedia(
      id: json['id'] as int?,
      title: json['title'] as String? ?? '',
      name: json['name'] as String? ?? '',
      overview: json['overview'] as String? ?? '',
      genreIds: (json['genre_ids'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0,
      releaseDate: json['release_date'] as String? ?? '',
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0,
      voteCount: json['vote_count'] as int? ?? 0,
      mediaType: json['media_type'] as String? ?? '',
      adult: json['adult'] as bool? ?? false,
      originalLanguage: json['original_language'] as String? ?? '',
      originalTitle: json['original_title'] as String? ?? '',
      originalName: json['original_name'] as String? ?? '',
      video: json['video'] as bool? ?? false,
      posterPath: json['poster_path'] as String? ?? '',
      backdropPath: json['backdrop_path'] as String? ?? '',
    );

Map<String, dynamic> _$$_TMDBMediaToJson(_$_TMDBMedia instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'name': instance.name,
      'overview': instance.overview,
      'genre_ids': instance.genreIds,
      'popularity': instance.popularity,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'media_type': instance.mediaType,
      'adult': instance.adult,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'original_name': instance.originalName,
      'video': instance.video,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
    };
