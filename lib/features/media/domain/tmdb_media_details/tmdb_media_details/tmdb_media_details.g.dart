// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_media_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TMDBMediaDetails _$$_TMDBMediaDetailsFromJson(Map<String, dynamic> json) =>
    _$_TMDBMediaDetails(
      budget: json['budget'] as int?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String?,
      id: json['id'] as int?,
      releaseDate: json['release_date'] as String?,
      revenue: json['revenue'] as int?,
      runtime: json['runtime'] as int?,
      status: json['status'] as String?,
      tagline: json['tagline'] as String?,
      title: json['title'] as String?,
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TMDBMediaDetailsToJson(_$_TMDBMediaDetails instance) =>
    <String, dynamic>{
      'budget': instance.budget,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'release_date': instance.releaseDate,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'videos': instance.videos,
    };
