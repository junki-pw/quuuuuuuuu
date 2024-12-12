// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InfiniteScrollingState {
  double get pixels => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of InfiniteScrollingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfiniteScrollingStateCopyWith<InfiniteScrollingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfiniteScrollingStateCopyWith<$Res> {
  factory $InfiniteScrollingStateCopyWith(InfiniteScrollingState value,
          $Res Function(InfiniteScrollingState) then) =
      _$InfiniteScrollingStateCopyWithImpl<$Res, InfiniteScrollingState>;
  @useResult
  $Res call({double pixels, bool isLoading});
}

/// @nodoc
class _$InfiniteScrollingStateCopyWithImpl<$Res,
        $Val extends InfiniteScrollingState>
    implements $InfiniteScrollingStateCopyWith<$Res> {
  _$InfiniteScrollingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfiniteScrollingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pixels = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      pixels: null == pixels
          ? _value.pixels
          : pixels // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfiniteScrollingStateImplCopyWith<$Res>
    implements $InfiniteScrollingStateCopyWith<$Res> {
  factory _$$InfiniteScrollingStateImplCopyWith(
          _$InfiniteScrollingStateImpl value,
          $Res Function(_$InfiniteScrollingStateImpl) then) =
      __$$InfiniteScrollingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double pixels, bool isLoading});
}

/// @nodoc
class __$$InfiniteScrollingStateImplCopyWithImpl<$Res>
    extends _$InfiniteScrollingStateCopyWithImpl<$Res,
        _$InfiniteScrollingStateImpl>
    implements _$$InfiniteScrollingStateImplCopyWith<$Res> {
  __$$InfiniteScrollingStateImplCopyWithImpl(
      _$InfiniteScrollingStateImpl _value,
      $Res Function(_$InfiniteScrollingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfiniteScrollingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pixels = null,
    Object? isLoading = null,
  }) {
    return _then(_$InfiniteScrollingStateImpl(
      pixels: null == pixels
          ? _value.pixels
          : pixels // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InfiniteScrollingStateImpl implements _InfiniteScrollingState {
  const _$InfiniteScrollingStateImpl({this.pixels = 0, this.isLoading = false});

  @override
  @JsonKey()
  final double pixels;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'InfiniteScrollingState(pixels: $pixels, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfiniteScrollingStateImpl &&
            (identical(other.pixels, pixels) || other.pixels == pixels) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pixels, isLoading);

  /// Create a copy of InfiniteScrollingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfiniteScrollingStateImplCopyWith<_$InfiniteScrollingStateImpl>
      get copyWith => __$$InfiniteScrollingStateImplCopyWithImpl<
          _$InfiniteScrollingStateImpl>(this, _$identity);
}

abstract class _InfiniteScrollingState implements InfiniteScrollingState {
  const factory _InfiniteScrollingState(
      {final double pixels,
      final bool isLoading}) = _$InfiniteScrollingStateImpl;

  @override
  double get pixels;
  @override
  bool get isLoading;

  /// Create a copy of InfiniteScrollingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfiniteScrollingStateImplCopyWith<_$InfiniteScrollingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
