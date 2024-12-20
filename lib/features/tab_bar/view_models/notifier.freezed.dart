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
mixin _$TabBarTestState {
  List<TabTestType> get types => throw _privateConstructorUsedError;

  /// Create a copy of TabBarTestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TabBarTestStateCopyWith<TabBarTestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabBarTestStateCopyWith<$Res> {
  factory $TabBarTestStateCopyWith(
          TabBarTestState value, $Res Function(TabBarTestState) then) =
      _$TabBarTestStateCopyWithImpl<$Res, TabBarTestState>;
  @useResult
  $Res call({List<TabTestType> types});
}

/// @nodoc
class _$TabBarTestStateCopyWithImpl<$Res, $Val extends TabBarTestState>
    implements $TabBarTestStateCopyWith<$Res> {
  _$TabBarTestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TabBarTestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TabTestType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabBarTestStateImplCopyWith<$Res>
    implements $TabBarTestStateCopyWith<$Res> {
  factory _$$TabBarTestStateImplCopyWith(_$TabBarTestStateImpl value,
          $Res Function(_$TabBarTestStateImpl) then) =
      __$$TabBarTestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TabTestType> types});
}

/// @nodoc
class __$$TabBarTestStateImplCopyWithImpl<$Res>
    extends _$TabBarTestStateCopyWithImpl<$Res, _$TabBarTestStateImpl>
    implements _$$TabBarTestStateImplCopyWith<$Res> {
  __$$TabBarTestStateImplCopyWithImpl(
      _$TabBarTestStateImpl _value, $Res Function(_$TabBarTestStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TabBarTestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
  }) {
    return _then(_$TabBarTestStateImpl(
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TabTestType>,
    ));
  }
}

/// @nodoc

class _$TabBarTestStateImpl extends _TabBarTestState {
  const _$TabBarTestStateImpl({final List<TabTestType> types = const []})
      : _types = types,
        super._();

  final List<TabTestType> _types;
  @override
  @JsonKey()
  List<TabTestType> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'TabBarTestState(types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabBarTestStateImpl &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_types));

  /// Create a copy of TabBarTestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TabBarTestStateImplCopyWith<_$TabBarTestStateImpl> get copyWith =>
      __$$TabBarTestStateImplCopyWithImpl<_$TabBarTestStateImpl>(
          this, _$identity);
}

abstract class _TabBarTestState extends TabBarTestState {
  const factory _TabBarTestState({final List<TabTestType> types}) =
      _$TabBarTestStateImpl;
  const _TabBarTestState._() : super._();

  @override
  List<TabTestType> get types;

  /// Create a copy of TabBarTestState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabBarTestStateImplCopyWith<_$TabBarTestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
