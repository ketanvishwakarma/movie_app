// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotlight_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpotlightState {
  int get currentIndex => throw _privateConstructorUsedError;
  AsyncValue<List<TrendingMedia>> get trendingMediaList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpotlightStateCopyWith<SpotlightState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotlightStateCopyWith<$Res> {
  factory $SpotlightStateCopyWith(
          SpotlightState value, $Res Function(SpotlightState) then) =
      _$SpotlightStateCopyWithImpl<$Res, SpotlightState>;
  @useResult
  $Res call(
      {int currentIndex, AsyncValue<List<TrendingMedia>> trendingMediaList});
}

/// @nodoc
class _$SpotlightStateCopyWithImpl<$Res, $Val extends SpotlightState>
    implements $SpotlightStateCopyWith<$Res> {
  _$SpotlightStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? trendingMediaList = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      trendingMediaList: null == trendingMediaList
          ? _value.trendingMediaList
          : trendingMediaList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<TrendingMedia>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpotlightStateCopyWith<$Res>
    implements $SpotlightStateCopyWith<$Res> {
  factory _$$_SpotlightStateCopyWith(
          _$_SpotlightState value, $Res Function(_$_SpotlightState) then) =
      __$$_SpotlightStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentIndex, AsyncValue<List<TrendingMedia>> trendingMediaList});
}

/// @nodoc
class __$$_SpotlightStateCopyWithImpl<$Res>
    extends _$SpotlightStateCopyWithImpl<$Res, _$_SpotlightState>
    implements _$$_SpotlightStateCopyWith<$Res> {
  __$$_SpotlightStateCopyWithImpl(
      _$_SpotlightState _value, $Res Function(_$_SpotlightState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? trendingMediaList = null,
  }) {
    return _then(_$_SpotlightState(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      trendingMediaList: null == trendingMediaList
          ? _value.trendingMediaList
          : trendingMediaList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<TrendingMedia>>,
    ));
  }
}

/// @nodoc

class _$_SpotlightState implements _SpotlightState {
  _$_SpotlightState(
      {required this.currentIndex, required this.trendingMediaList});

  @override
  final int currentIndex;
  @override
  final AsyncValue<List<TrendingMedia>> trendingMediaList;

  @override
  String toString() {
    return 'SpotlightState(currentIndex: $currentIndex, trendingMediaList: $trendingMediaList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpotlightState &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.trendingMediaList, trendingMediaList) ||
                other.trendingMediaList == trendingMediaList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex, trendingMediaList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpotlightStateCopyWith<_$_SpotlightState> get copyWith =>
      __$$_SpotlightStateCopyWithImpl<_$_SpotlightState>(this, _$identity);
}

abstract class _SpotlightState implements SpotlightState {
  factory _SpotlightState(
          {required final int currentIndex,
          required final AsyncValue<List<TrendingMedia>> trendingMediaList}) =
      _$_SpotlightState;

  @override
  int get currentIndex;
  @override
  AsyncValue<List<TrendingMedia>> get trendingMediaList;
  @override
  @JsonKey(ignore: true)
  _$$_SpotlightStateCopyWith<_$_SpotlightState> get copyWith =>
      throw _privateConstructorUsedError;
}
