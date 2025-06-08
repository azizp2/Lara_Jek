// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Statistic _$StatisticFromJson(Map<String, dynamic> json) {
  return StatisticEntity.fromJson(json);
}

/// @nodoc
mixin _$Statistic {
  @JsonKey(name: 'total_bookings')
  int get totalBookings => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_earnings')
  int get totalEarnings => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'total_bookings') int totalBookings,
            @JsonKey(name: 'total_earnings') int totalEarnings)
        entity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'total_bookings') int totalBookings,
            @JsonKey(name: 'total_earnings') int totalEarnings)?
        entity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'total_bookings') int totalBookings,
            @JsonKey(name: 'total_earnings') int totalEarnings)?
        entity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatisticEntity value) entity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatisticEntity value)? entity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatisticEntity value)? entity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Statistic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Statistic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatisticCopyWith<Statistic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticCopyWith<$Res> {
  factory $StatisticCopyWith(Statistic value, $Res Function(Statistic) then) =
      _$StatisticCopyWithImpl<$Res, Statistic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_bookings') int totalBookings,
      @JsonKey(name: 'total_earnings') int totalEarnings});
}

/// @nodoc
class _$StatisticCopyWithImpl<$Res, $Val extends Statistic>
    implements $StatisticCopyWith<$Res> {
  _$StatisticCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Statistic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBookings = null,
    Object? totalEarnings = null,
  }) {
    return _then(_value.copyWith(
      totalBookings: null == totalBookings
          ? _value.totalBookings
          : totalBookings // ignore: cast_nullable_to_non_nullable
              as int,
      totalEarnings: null == totalEarnings
          ? _value.totalEarnings
          : totalEarnings // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticEntityImplCopyWith<$Res>
    implements $StatisticCopyWith<$Res> {
  factory _$$StatisticEntityImplCopyWith(_$StatisticEntityImpl value,
          $Res Function(_$StatisticEntityImpl) then) =
      __$$StatisticEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_bookings') int totalBookings,
      @JsonKey(name: 'total_earnings') int totalEarnings});
}

/// @nodoc
class __$$StatisticEntityImplCopyWithImpl<$Res>
    extends _$StatisticCopyWithImpl<$Res, _$StatisticEntityImpl>
    implements _$$StatisticEntityImplCopyWith<$Res> {
  __$$StatisticEntityImplCopyWithImpl(
      _$StatisticEntityImpl _value, $Res Function(_$StatisticEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Statistic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBookings = null,
    Object? totalEarnings = null,
  }) {
    return _then(_$StatisticEntityImpl(
      totalBookings: null == totalBookings
          ? _value.totalBookings
          : totalBookings // ignore: cast_nullable_to_non_nullable
              as int,
      totalEarnings: null == totalEarnings
          ? _value.totalEarnings
          : totalEarnings // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticEntityImpl implements StatisticEntity {
  _$StatisticEntityImpl(
      {@JsonKey(name: 'total_bookings') required this.totalBookings,
      @JsonKey(name: 'total_earnings') required this.totalEarnings});

  factory _$StatisticEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticEntityImplFromJson(json);

  @override
  @JsonKey(name: 'total_bookings')
  final int totalBookings;
  @override
  @JsonKey(name: 'total_earnings')
  final int totalEarnings;

  @override
  String toString() {
    return 'Statistic.entity(totalBookings: $totalBookings, totalEarnings: $totalEarnings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticEntityImpl &&
            (identical(other.totalBookings, totalBookings) ||
                other.totalBookings == totalBookings) &&
            (identical(other.totalEarnings, totalEarnings) ||
                other.totalEarnings == totalEarnings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalBookings, totalEarnings);

  /// Create a copy of Statistic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticEntityImplCopyWith<_$StatisticEntityImpl> get copyWith =>
      __$$StatisticEntityImplCopyWithImpl<_$StatisticEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'total_bookings') int totalBookings,
            @JsonKey(name: 'total_earnings') int totalEarnings)
        entity,
  }) {
    return entity(totalBookings, totalEarnings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'total_bookings') int totalBookings,
            @JsonKey(name: 'total_earnings') int totalEarnings)?
        entity,
  }) {
    return entity?.call(totalBookings, totalEarnings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'total_bookings') int totalBookings,
            @JsonKey(name: 'total_earnings') int totalEarnings)?
        entity,
    required TResult orElse(),
  }) {
    if (entity != null) {
      return entity(totalBookings, totalEarnings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatisticEntity value) entity,
  }) {
    return entity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatisticEntity value)? entity,
  }) {
    return entity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatisticEntity value)? entity,
    required TResult orElse(),
  }) {
    if (entity != null) {
      return entity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticEntityImplToJson(
      this,
    );
  }
}

abstract class StatisticEntity implements Statistic {
  factory StatisticEntity(
          {@JsonKey(name: 'total_bookings') required final int totalBookings,
          @JsonKey(name: 'total_earnings') required final int totalEarnings}) =
      _$StatisticEntityImpl;

  factory StatisticEntity.fromJson(Map<String, dynamic> json) =
      _$StatisticEntityImpl.fromJson;

  @override
  @JsonKey(name: 'total_bookings')
  int get totalBookings;
  @override
  @JsonKey(name: 'total_earnings')
  int get totalEarnings;

  /// Create a copy of Statistic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticEntityImplCopyWith<_$StatisticEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
