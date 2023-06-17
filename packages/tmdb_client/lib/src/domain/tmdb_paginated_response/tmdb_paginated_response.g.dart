// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_paginated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TmdbPaginatedResponse _$$_TmdbPaginatedResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TmdbPaginatedResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$_TmdbPaginatedResponseToJson(
        _$_TmdbPaginatedResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
