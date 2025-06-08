// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Tracking _$TrackingFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'paramEntity':
      return TrackingParamEntity.fromJson(json);
    case 'entity':
      return TrackingEntity.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Tracking',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Tracking {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude) paramEntity,
    required TResult Function(double latitude, double longitude, String status)
        entity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double latitude, double longitude)? paramEntity,
    TResult? Function(double latitude, double longitude, String status)? entity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? paramEntity,
    TResult Function(double latitude, double longitude, String status)? entity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingParamEntity value) paramEntity,
    required TResult Function(TrackingEntity value) entity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingParamEntity value)? paramEntity,
    TResult? Function(TrackingEntity value)? entity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingParamEntity value)? paramEntity,
    TResult Function(TrackingEntity value)? entity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Tracking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackingCopyWith<Tracking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingCopyWith<$Res> {
  factory $TrackingCopyWith(Tracking value, $Res Function(Tracking) then) =
      _$TrackingCopyWithImpl<$Res, Tracking>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$TrackingCopyWithImpl<$Res, $Val extends Tracking>
    implements $TrackingCopyWith<$Res> {
  _$TrackingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackingParamEntityImplCopyWith<$Res>
    implements $TrackingCopyWith<$Res> {
  factory _$$TrackingParamEntityImplCopyWith(_$TrackingParamEntityImpl value,
          $Res Function(_$TrackingParamEntityImpl) then) =
      __$$TrackingParamEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$TrackingParamEntityImplCopyWithImpl<$Res>
    extends _$TrackingCopyWithImpl<$Res, _$TrackingParamEntityImpl>
    implements _$$TrackingParamEntityImplCopyWith<$Res> {
  __$$TrackingParamEntityImplCopyWithImpl(_$TrackingParamEntityImpl _value,
      $Res Function(_$TrackingParamEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$TrackingParamEntityImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackingParamEntityImpl implements TrackingParamEntity {
  _$TrackingParamEntityImpl(
      {required this.latitude, required this.longitude, final String? $type})
      : $type = $type ?? 'paramEntity';

  factory _$TrackingParamEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackingParamEntityImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Tracking.paramEntity(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingParamEntityImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingParamEntityImplCopyWith<_$TrackingParamEntityImpl> get copyWith =>
      __$$TrackingParamEntityImplCopyWithImpl<_$TrackingParamEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude) paramEntity,
    required TResult Function(double latitude, double longitude, String status)
        entity,
  }) {
    return paramEntity(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double latitude, double longitude)? paramEntity,
    TResult? Function(double latitude, double longitude, String status)? entity,
  }) {
    return paramEntity?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? paramEntity,
    TResult Function(double latitude, double longitude, String status)? entity,
    required TResult orElse(),
  }) {
    if (paramEntity != null) {
      return paramEntity(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingParamEntity value) paramEntity,
    required TResult Function(TrackingEntity value) entity,
  }) {
    return paramEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingParamEntity value)? paramEntity,
    TResult? Function(TrackingEntity value)? entity,
  }) {
    return paramEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingParamEntity value)? paramEntity,
    TResult Function(TrackingEntity value)? entity,
    required TResult orElse(),
  }) {
    if (paramEntity != null) {
      return paramEntity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingParamEntityImplToJson(
      this,
    );
  }
}

abstract class TrackingParamEntity implements Tracking {
  factory TrackingParamEntity(
      {required final double latitude,
      required final double longitude}) = _$TrackingParamEntityImpl;

  factory TrackingParamEntity.fromJson(Map<String, dynamic> json) =
      _$TrackingParamEntityImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackingParamEntityImplCopyWith<_$TrackingParamEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrackingEntityImplCopyWith<$Res>
    implements $TrackingCopyWith<$Res> {
  factory _$$TrackingEntityImplCopyWith(_$TrackingEntityImpl value,
          $Res Function(_$TrackingEntityImpl) then) =
      __$$TrackingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude, String status});
}

/// @nodoc
class __$$TrackingEntityImplCopyWithImpl<$Res>
    extends _$TrackingCopyWithImpl<$Res, _$TrackingEntityImpl>
    implements _$$TrackingEntityImplCopyWith<$Res> {
  __$$TrackingEntityImplCopyWithImpl(
      _$TrackingEntityImpl _value, $Res Function(_$TrackingEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? status = null,
  }) {
    return _then(_$TrackingEntityImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackingEntityImpl implements TrackingEntity {
  _$TrackingEntityImpl(
      {required this.latitude,
      required this.longitude,
      required this.status,
      final String? $type})
      : $type = $type ?? 'entity';

  factory _$TrackingEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackingEntityImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String status;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Tracking.entity(latitude: $latitude, longitude: $longitude, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingEntityImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, status);

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingEntityImplCopyWith<_$TrackingEntityImpl> get copyWith =>
      __$$TrackingEntityImplCopyWithImpl<_$TrackingEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude) paramEntity,
    required TResult Function(double latitude, double longitude, String status)
        entity,
  }) {
    return entity(latitude, longitude, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double latitude, double longitude)? paramEntity,
    TResult? Function(double latitude, double longitude, String status)? entity,
  }) {
    return entity?.call(latitude, longitude, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? paramEntity,
    TResult Function(double latitude, double longitude, String status)? entity,
    required TResult orElse(),
  }) {
    if (entity != null) {
      return entity(latitude, longitude, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingParamEntity value) paramEntity,
    required TResult Function(TrackingEntity value) entity,
  }) {
    return entity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingParamEntity value)? paramEntity,
    TResult? Function(TrackingEntity value)? entity,
  }) {
    return entity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingParamEntity value)? paramEntity,
    TResult Function(TrackingEntity value)? entity,
    required TResult orElse(),
  }) {
    if (entity != null) {
      return entity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingEntityImplToJson(
      this,
    );
  }
}

abstract class TrackingEntity implements Tracking {
  factory TrackingEntity(
      {required final double latitude,
      required final double longitude,
      required final String status}) = _$TrackingEntityImpl;

  factory TrackingEntity.fromJson(Map<String, dynamic> json) =
      _$TrackingEntityImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  String get status;

  /// Create a copy of Tracking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackingEntityImplCopyWith<_$TrackingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
