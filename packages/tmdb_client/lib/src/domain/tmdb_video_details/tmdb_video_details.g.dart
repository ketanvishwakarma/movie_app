// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_video_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TmdbVideoDetails _$$_TmdbVideoDetailsFromJson(Map<String, dynamic> json) =>
    _$_TmdbVideoDetails(
      id: json['id'] as String,
      iso6391: json['iso_639_1'] as String? ?? '',
      iso31661: json['iso_3166_1'] as String? ?? '',
      name: json['name'] as String? ?? '',
      key: json['key'] as String? ?? '',
      site: json['site'] as String? ?? '',
      size: json['size'] as int? ?? -1,
      type: json['type'] as String? ?? '',
      official: json['official'] as bool? ?? false,
      publishedAt: json['published_at'] == null
          ? null
          : DateTime.parse(json['published_at'] as String),
    );

Map<String, dynamic> _$$_TmdbVideoDetailsToJson(_$_TmdbVideoDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'iso_639_1': instance.iso6391,
      'iso_3166_1': instance.iso31661,
      'name': instance.name,
      'key': instance.key,
      'site': instance.site,
      'size': instance.size,
      'type': instance.type,
      'official': instance.official,
      'published_at': instance.publishedAt?.toIso8601String(),
    };
