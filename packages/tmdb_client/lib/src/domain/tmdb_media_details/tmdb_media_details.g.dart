// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_media_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TmdbMediaDetails _$$_TmdbMediaDetailsFromJson(Map<String, dynamic> json) =>
    _$_TmdbMediaDetails(
      budget: json['budget'] as int? ?? -1,
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      homepage: json['homepage'] as String? ?? '',
      id: json['id'] as int? ?? -1,
      releaseDate: json['release_date'] as String? ?? '',
      revenue: json['revenue'] as int? ?? -1,
      runtime: json['runtime'] as int? ?? -1,
      status: json['status'] as String? ?? '',
      tagline: json['tagline'] as String? ?? '',
      title: json['title'] as String? ?? '',
      videos: (json['videos'] as List<dynamic>?)
              ?.map((e) => TmdbVideoDetails.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TmdbMediaDetailsToJson(_$_TmdbMediaDetails instance) =>
    <String, dynamic>{
      'budget': instance.budget,
      'genres': instance.genres.map((e) => e.toJson()).toList(),
      'homepage': instance.homepage,
      'id': instance.id,
      'release_date': instance.releaseDate,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'videos': instance.videos.map((e) => e.toJson()).toList(),
    };
