// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Fcm _$FcmFromJson(Map<String, dynamic> json) {
  return FcmParamEntity.fromJson(json);
}

/// @nodoc
mixin _$Fcm {
  @JsonKey(name: 'fcm_token')
  String get fcmToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_type')
  String get deviceType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'fcm_token') String fcmToken,
            @JsonKey(name: 'device_type') String deviceType)
        paramEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'fcm_token') String fcmToken,
            @JsonKey(name: 'device_type') String deviceType)?
        paramEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'fcm_token') String fcmToken,
            @JsonKey(name: 'device_type') String deviceType)?
        paramEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FcmParamEntity value) paramEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FcmParamEntity value)? paramEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FcmParamEntity value)? paramEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Fcm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Fcm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FcmCopyWith<Fcm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FcmCopyWith<$Res> {
  factory $FcmCopyWith(Fcm value, $Res Function(Fcm) then) =
      _$FcmCopyWithImpl<$Res, Fcm>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fcm_token') String fcmToken,
      @JsonKey(name: 'device_type') String deviceType});
}

/// @nodoc
class _$FcmCopyWithImpl<$Res, $Val extends Fcm> implements $FcmCopyWith<$Res> {
  _$FcmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Fcm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
    Object? deviceType = null,
  }) {
    return _then(_value.copyWith(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FcmParamEntityImplCopyWith<$Res>
    implements $FcmCopyWith<$Res> {
  factory _$$FcmParamEntityImplCopyWith(_$FcmParamEntityImpl value,
          $Res Function(_$FcmParamEntityImpl) then) =
      __$$FcmParamEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fcm_token') String fcmToken,
      @JsonKey(name: 'device_type') String deviceType});
}

/// @nodoc
class __$$FcmParamEntityImplCopyWithImpl<$Res>
    extends _$FcmCopyWithImpl<$Res, _$FcmParamEntityImpl>
    implements _$$FcmParamEntityImplCopyWith<$Res> {
  __$$FcmParamEntityImplCopyWithImpl(
      _$FcmParamEntityImpl _value, $Res Function(_$FcmParamEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Fcm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
    Object? deviceType = null,
  }) {
    return _then(_$FcmParamEntityImpl(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FcmParamEntityImpl implements FcmParamEntity {
  const _$FcmParamEntityImpl(
      {@JsonKey(name: 'fcm_token') required this.fcmToken,
      @JsonKey(name: 'device_type') required this.deviceType});

  factory _$FcmParamEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$FcmParamEntityImplFromJson(json);

  @override
  @JsonKey(name: 'fcm_token')
  final String fcmToken;
  @override
  @JsonKey(name: 'device_type')
  final String deviceType;

  @override
  String toString() {
    return 'Fcm.paramEntity(fcmToken: $fcmToken, deviceType: $deviceType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FcmParamEntityImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken, deviceType);

  /// Create a copy of Fcm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FcmParamEntityImplCopyWith<_$FcmParamEntityImpl> get copyWith =>
      __$$FcmParamEntityImplCopyWithImpl<_$FcmParamEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'fcm_token') String fcmToken,
            @JsonKey(name: 'device_type') String deviceType)
        paramEntity,
  }) {
    return paramEntity(fcmToken, deviceType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'fcm_token') String fcmToken,
            @JsonKey(name: 'device_type') String deviceType)?
        paramEntity,
  }) {
    return paramEntity?.call(fcmToken, deviceType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'fcm_token') String fcmToken,
            @JsonKey(name: 'device_type') String deviceType)?
        paramEntity,
    required TResult orElse(),
  }) {
    if (paramEntity != null) {
      return paramEntity(fcmToken, deviceType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FcmParamEntity value) paramEntity,
  }) {
    return paramEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FcmParamEntity value)? paramEntity,
  }) {
    return paramEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FcmParamEntity value)? paramEntity,
    required TResult orElse(),
  }) {
    if (paramEntity != null) {
      return paramEntity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FcmParamEntityImplToJson(
      this,
    );
  }
}

abstract class FcmParamEntity implements Fcm {
  const factory FcmParamEntity(
          {@JsonKey(name: 'fcm_token') required final String fcmToken,
          @JsonKey(name: 'device_type') required final String deviceType}) =
      _$FcmParamEntityImpl;

  factory FcmParamEntity.fromJson(Map<String, dynamic> json) =
      _$FcmParamEntityImpl.fromJson;

  @override
  @JsonKey(name: 'fcm_token')
  String get fcmToken;
  @override
  @JsonKey(name: 'device_type')
  String get deviceType;

  /// Create a copy of Fcm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FcmParamEntityImplCopyWith<_$FcmParamEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
