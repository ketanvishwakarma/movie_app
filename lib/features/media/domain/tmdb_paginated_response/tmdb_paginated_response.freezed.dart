// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tmdb_paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TMDBPaginatedResponse _$TMDBPaginatedResponseFromJson(
    Map<String, dynamic> json) {
  return _TMDBPaginatedResponse.fromJson(json);
}

/// @nodoc
mixin _$TMDBPaginatedResponse {
  int get page => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get results => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TMDBPaginatedResponseCopyWith<TMDBPaginatedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TMDBPaginatedResponseCopyWith<$Res> {
  factory $TMDBPaginatedResponseCopyWith(TMDBPaginatedResponse value,
          $Res Function(TMDBPaginatedResponse) then) =
      _$TMDBPaginatedResponseCopyWithImpl<$Res, TMDBPaginatedResponse>;
  @useResult
  $Res call(
      {int page,
      List<Map<String, dynamic>> results,
      int totalPages,
      int totalResults});
}

/// @nodoc
class _$TMDBPaginatedResponseCopyWithImpl<$Res,
        $Val extends TMDBPaginatedResponse>
    implements $TMDBPaginatedResponseCopyWith<$Res> {
  _$TMDBPaginatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TMDBPaginatedResponseCopyWith<$Res>
    implements $TMDBPaginatedResponseCopyWith<$Res> {
  factory _$$_TMDBPaginatedResponseCopyWith(_$_TMDBPaginatedResponse value,
          $Res Function(_$_TMDBPaginatedResponse) then) =
      __$$_TMDBPaginatedResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      List<Map<String, dynamic>> results,
      int totalPages,
      int totalResults});
}

/// @nodoc
class __$$_TMDBPaginatedResponseCopyWithImpl<$Res>
    extends _$TMDBPaginatedResponseCopyWithImpl<$Res, _$_TMDBPaginatedResponse>
    implements _$$_TMDBPaginatedResponseCopyWith<$Res> {
  __$$_TMDBPaginatedResponseCopyWithImpl(_$_TMDBPaginatedResponse _value,
      $Res Function(_$_TMDBPaginatedResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$_TMDBPaginatedResponse(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_TMDBPaginatedResponse implements _TMDBPaginatedResponse {
  _$_TMDBPaginatedResponse(
      {required this.page,
      required final List<Map<String, dynamic>> results,
      required this.totalPages,
      required this.totalResults})
      : _results = results;

  factory _$_TMDBPaginatedResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TMDBPaginatedResponseFromJson(json);

  @override
  final int page;
  final List<Map<String, dynamic>> _results;
  @override
  List<Map<String, dynamic>> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final int totalPages;
  @override
  final int totalResults;

  @override
  String toString() {
    return 'TMDBPaginatedResponse(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TMDBPaginatedResponse &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TMDBPaginatedResponseCopyWith<_$_TMDBPaginatedResponse> get copyWith =>
      __$$_TMDBPaginatedResponseCopyWithImpl<_$_TMDBPaginatedResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TMDBPaginatedResponseToJson(
      this,
    );
  }
}

abstract class _TMDBPaginatedResponse implements TMDBPaginatedResponse {
  factory _TMDBPaginatedResponse(
      {required final int page,
      required final List<Map<String, dynamic>> results,
      required final int totalPages,
      required final int totalResults}) = _$_TMDBPaginatedResponse;

  factory _TMDBPaginatedResponse.fromJson(Map<String, dynamic> json) =
      _$_TMDBPaginatedResponse.fromJson;

  @override
  int get page;
  @override
  List<Map<String, dynamic>> get results;
  @override
  int get totalPages;
  @override
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_TMDBPaginatedResponseCopyWith<_$_TMDBPaginatedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
