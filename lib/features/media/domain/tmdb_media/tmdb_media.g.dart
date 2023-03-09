// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TMDBMedia _$$_TMDBMediaFromJson(Map<String, dynamic> json) => _$_TMDBMedia(
      adult: json['adult'] as bool,
      id: json['id'] as int,
      title: json['title'] as String,
      originalLanguage: json['originalLanguage'] as String,
      originalTitle: json['originalTitle'] as String,
      overview: json['overview'] as String,
      mediaType: json['mediaType'] as String,
      genreIds:
          (json['genreIds'] as List<dynamic>).map((e) => e as int).toList(),
      popularity: (json['popularity'] as num).toDouble(),
      releaseDate: json['releaseDate'] as String,
      video: json['video'] as bool,
      voteAverage: (json['voteAverage'] as num).toDouble(),
      voteCount: json['voteCount'] as int,
      posterPath: json['posterPath'] as String?,
      backdropPath: json['backdropPath'] as String?,
    );

Map<String, dynamic> _$$_TMDBMediaToJson(_$_TMDBMedia instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'title': instance.title,
      'originalLanguage': instance.originalLanguage,
      'originalTitle': instance.originalTitle,
      'overview': instance.overview,
      'mediaType': instance.mediaType,
      'genreIds': instance.genreIds,
      'popularity': instance.popularity,
      'releaseDate': instance.releaseDate,
      'video': instance.video,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
      'posterPath': instance.posterPath,
      'backdropPath': instance.backdropPath,
    };
