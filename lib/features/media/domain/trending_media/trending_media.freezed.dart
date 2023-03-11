// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrendingMedia {
  String get title => throw _privateConstructorUsedError;
  String get coverImage => throw _privateConstructorUsedError;
  String get posterImage => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;
  String get mediaType => throw _privateConstructorUsedError;
  String get popularity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrendingMediaCopyWith<TrendingMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingMediaCopyWith<$Res> {
  factory $TrendingMediaCopyWith(
          TrendingMedia value, $Res Function(TrendingMedia) then) =
      _$TrendingMediaCopyWithImpl<$Res, TrendingMedia>;
  @useResult
  $Res call(
      {String title,
      String coverImage,
      String posterImage,
      String rating,
      String mediaType,
      String popularity});
}

/// @nodoc
class _$TrendingMediaCopyWithImpl<$Res, $Val extends TrendingMedia>
    implements $TrendingMediaCopyWith<$Res> {
  _$TrendingMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? coverImage = null,
    Object? posterImage = null,
    Object? rating = null,
    Object? mediaType = null,
    Object? popularity = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      posterImage: null == posterImage
          ? _value.posterImage
          : posterImage // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrendingMediaCopyWith<$Res>
    implements $TrendingMediaCopyWith<$Res> {
  factory _$$_TrendingMediaCopyWith(
          _$_TrendingMedia value, $Res Function(_$_TrendingMedia) then) =
      __$$_TrendingMediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String coverImage,
      String posterImage,
      String rating,
      String mediaType,
      String popularity});
}

/// @nodoc
class __$$_TrendingMediaCopyWithImpl<$Res>
    extends _$TrendingMediaCopyWithImpl<$Res, _$_TrendingMedia>
    implements _$$_TrendingMediaCopyWith<$Res> {
  __$$_TrendingMediaCopyWithImpl(
      _$_TrendingMedia _value, $Res Function(_$_TrendingMedia) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? coverImage = null,
    Object? posterImage = null,
    Object? rating = null,
    Object? mediaType = null,
    Object? popularity = null,
  }) {
    return _then(_$_TrendingMedia(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      posterImage: null == posterImage
          ? _value.posterImage
          : posterImage // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TrendingMedia implements _TrendingMedia {
  _$_TrendingMedia(
      {required this.title,
      required this.coverImage,
      required this.posterImage,
      required this.rating,
      required this.mediaType,
      required this.popularity});

  @override
  final String title;
  @override
  final String coverImage;
  @override
  final String posterImage;
  @override
  final String rating;
  @override
  final String mediaType;
  @override
  final String popularity;

  @override
  String toString() {
    return 'TrendingMedia(title: $title, coverImage: $coverImage, posterImage: $posterImage, rating: $rating, mediaType: $mediaType, popularity: $popularity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrendingMedia &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.posterImage, posterImage) ||
                other.posterImage == posterImage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, coverImage, posterImage,
      rating, mediaType, popularity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrendingMediaCopyWith<_$_TrendingMedia> get copyWith =>
      __$$_TrendingMediaCopyWithImpl<_$_TrendingMedia>(this, _$identity);
}

abstract class _TrendingMedia implements TrendingMedia {
  factory _TrendingMedia(
      {required final String title,
      required final String coverImage,
      required final String posterImage,
      required final String rating,
      required final String mediaType,
      required final String popularity}) = _$_TrendingMedia;

  @override
  String get title;
  @override
  String get coverImage;
  @override
  String get posterImage;
  @override
  String get rating;
  @override
  String get mediaType;
  @override
  String get popularity;
  @override
  @JsonKey(ignore: true)
  _$$_TrendingMediaCopyWith<_$_TrendingMedia> get copyWith =>
      throw _privateConstructorUsedError;
}
