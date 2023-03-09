// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_paginated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TMDBPaginatedResponse _$$_TMDBPaginatedResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TMDBPaginatedResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$_TMDBPaginatedResponseToJson(
        _$_TMDBPaginatedResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
