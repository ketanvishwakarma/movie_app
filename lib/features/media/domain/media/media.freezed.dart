// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Media {
  TrendingMedia get highlights => throw _privateConstructorUsedError;
  TMDBMediaDetails get details => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call({TrendingMedia highlights, TMDBMediaDetails details});

  $TrendingMediaCopyWith<$Res> get highlights;
  $TMDBMediaDetailsCopyWith<$Res> get details;
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? highlights = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      highlights: null == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as TrendingMedia,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as TMDBMediaDetails,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrendingMediaCopyWith<$Res> get highlights {
    return $TrendingMediaCopyWith<$Res>(_value.highlights, (value) {
      return _then(_value.copyWith(highlights: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TMDBMediaDetailsCopyWith<$Res> get details {
    return $TMDBMediaDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MediaCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$_MediaCopyWith(_$_Media value, $Res Function(_$_Media) then) =
      __$$_MediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TrendingMedia highlights, TMDBMediaDetails details});

  @override
  $TrendingMediaCopyWith<$Res> get highlights;
  @override
  $TMDBMediaDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$$_MediaCopyWithImpl<$Res> extends _$MediaCopyWithImpl<$Res, _$_Media>
    implements _$$_MediaCopyWith<$Res> {
  __$$_MediaCopyWithImpl(_$_Media _value, $Res Function(_$_Media) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? highlights = null,
    Object? details = null,
  }) {
    return _then(_$_Media(
      highlights: null == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as TrendingMedia,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as TMDBMediaDetails,
    ));
  }
}

/// @nodoc

class _$_Media implements _Media {
  _$_Media({required this.highlights, this.details = const TMDBMediaDetails()});

  @override
  final TrendingMedia highlights;
  @override
  @JsonKey()
  final TMDBMediaDetails details;

  @override
  String toString() {
    return 'Media(highlights: $highlights, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Media &&
            (identical(other.highlights, highlights) ||
                other.highlights == highlights) &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, highlights, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      __$$_MediaCopyWithImpl<_$_Media>(this, _$identity);
}

abstract class _Media implements Media {
  factory _Media(
      {required final TrendingMedia highlights,
      final TMDBMediaDetails details}) = _$_Media;

  @override
  TrendingMedia get highlights;
  @override
  TMDBMediaDetails get details;
  @override
  @JsonKey(ignore: true)
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      throw _privateConstructorUsedError;
}
