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
  String get rating => throw _privateConstructorUsedError;
  String get mediaType => throw _privateConstructorUsedError;

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
  $Res call({String title, String coverImage, String rating, String mediaType});
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
    Object? rating = null,
    Object? mediaType = null,
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
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
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
  $Res call({String title, String coverImage, String rating, String mediaType});
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
    Object? rating = null,
    Object? mediaType = null,
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
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TrendingMedia implements _TrendingMedia {
  _$_TrendingMedia(
      {required this.title,
      required this.coverImage,
      required this.rating,
      required this.mediaType});

  @override
  final String title;
  @override
  final String coverImage;
  @override
  final String rating;
  @override
  final String mediaType;

  @override
  String toString() {
    return 'TrendingMedia(title: $title, coverImage: $coverImage, rating: $rating, mediaType: $mediaType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrendingMedia &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, coverImage, rating, mediaType);

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
      required final String rating,
      required final String mediaType}) = _$_TrendingMedia;

  @override
  String get title;
  @override
  String get coverImage;
  @override
  String get rating;
  @override
  String get mediaType;
  @override
  @JsonKey(ignore: true)
  _$$_TrendingMediaCopyWith<_$_TrendingMedia> get copyWith =>
      throw _privateConstructorUsedError;
}
