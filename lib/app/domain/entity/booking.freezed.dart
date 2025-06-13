// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Booking _$BookingFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'driverEntity':
      return BookingEntity.fromJson(json);
    case 'createParamEntity':
      return BookingCreateParamEntity.fromJson(json);
    case 'statusParamEntity':
      return BookingStatusParamEntity.fromJson(json);
    case 'notifEntity':
      return BookingNotifEntity.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Booking',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Booking {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate,
            double price,
            String status,
            UserCustomerEntity customer,
            UserDriverEntity? driver,
            @JsonKey(name: 'created_at') String createdAt)
        driverEntity,
    required TResult Function(
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate)
        createParamEntity,
    required TResult Function(int id, String status) statusParamEntity,
    required TResult Function(int id, String text) notifEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate,
            double price,
            String status,
            UserCustomerEntity customer,
            UserDriverEntity? driver,
            @JsonKey(name: 'created_at') String createdAt)?
        driverEntity,
    TResult? Function(
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate)?
        createParamEntity,
    TResult? Function(int id, String status)? statusParamEntity,
    TResult? Function(int id, String text)? notifEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate,
            double price,
            String status,
            UserCustomerEntity customer,
            UserDriverEntity? driver,
            @JsonKey(name: 'created_at') String createdAt)?
        driverEntity,
    TResult Function(
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate)?
        createParamEntity,
    TResult Function(int id, String status)? statusParamEntity,
    TResult Function(int id, String text)? notifEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingEntity value) driverEntity,
    required TResult Function(BookingCreateParamEntity value) createParamEntity,
    required TResult Function(BookingStatusParamEntity value) statusParamEntity,
    required TResult Function(BookingNotifEntity value) notifEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingEntity value)? driverEntity,
    TResult? Function(BookingCreateParamEntity value)? createParamEntity,
    TResult? Function(BookingStatusParamEntity value)? statusParamEntity,
    TResult? Function(BookingNotifEntity value)? notifEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingEntity value)? driverEntity,
    TResult Function(BookingCreateParamEntity value)? createParamEntity,
    TResult Function(BookingStatusParamEntity value)? statusParamEntity,
    TResult Function(BookingNotifEntity value)? notifEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Booking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
}

/// @nodoc
class _$BookingCopyWithImpl<$Res, $Val extends Booking>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BookingEntityImplCopyWith<$Res> {
  factory _$$BookingEntityImplCopyWith(
          _$BookingEntityImpl value, $Res Function(_$BookingEntityImpl) then) =
      __$$BookingEntityImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'latitude_origin') double latitudeOrigin,
      @JsonKey(name: 'longitude_origin') double longitudeOrigin,
      @JsonKey(name: 'address_origin') String addressOrigin,
      @JsonKey(name: 'latitude_destination') double latitudeDestination,
      @JsonKey(name: 'longitude_destination') double longitudeDestination,
      @JsonKey(name: 'address_destination') String addressDestination,
      double distance,
      @JsonKey(name: 'time_estimate') int timeEstimate,
      double price,
      String status,
      UserCustomerEntity customer,
      UserDriverEntity? driver,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class __$$BookingEntityImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingEntityImpl>
    implements _$$BookingEntityImplCopyWith<$Res> {
  __$$BookingEntityImplCopyWithImpl(
      _$BookingEntityImpl _value, $Res Function(_$BookingEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitudeOrigin = null,
    Object? longitudeOrigin = null,
    Object? addressOrigin = null,
    Object? latitudeDestination = null,
    Object? longitudeDestination = null,
    Object? addressDestination = null,
    Object? distance = null,
    Object? timeEstimate = null,
    Object? price = null,
    Object? status = null,
    Object? customer = freezed,
    Object? driver = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$BookingEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitudeOrigin: null == latitudeOrigin
          ? _value.latitudeOrigin
          : latitudeOrigin // ignore: cast_nullable_to_non_nullable
              as double,
      longitudeOrigin: null == longitudeOrigin
          ? _value.longitudeOrigin
          : longitudeOrigin // ignore: cast_nullable_to_non_nullable
              as double,
      addressOrigin: null == addressOrigin
          ? _value.addressOrigin
          : addressOrigin // ignore: cast_nullable_to_non_nullable
              as String,
      latitudeDestination: null == latitudeDestination
          ? _value.latitudeDestination
          : latitudeDestination // ignore: cast_nullable_to_non_nullable
              as double,
      longitudeDestination: null == longitudeDestination
          ? _value.longitudeDestination
          : longitudeDestination // ignore: cast_nullable_to_non_nullable
              as double,
      addressDestination: null == addressDestination
          ? _value.addressDestination
          : addressDestination // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      timeEstimate: null == timeEstimate
          ? _value.timeEstimate
          : timeEstimate // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserCustomerEntity,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as UserDriverEntity?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingEntityImpl implements BookingEntity {
  _$BookingEntityImpl(
      {required this.id,
      @JsonKey(name: 'latitude_origin') required this.latitudeOrigin,
      @JsonKey(name: 'longitude_origin') required this.longitudeOrigin,
      @JsonKey(name: 'address_origin') required this.addressOrigin,
      @JsonKey(name: 'latitude_destination') required this.latitudeDestination,
      @JsonKey(name: 'longitude_destination')
      required this.longitudeDestination,
      @JsonKey(name: 'address_destination') required this.addressDestination,
      required this.distance,
      @JsonKey(name: 'time_estimate') required this.timeEstimate,
      required this.price,
      required this.status,
      required this.customer,
      this.driver,
      @JsonKey(name: 'created_at') required this.createdAt,
      final String? $type})
      : $type = $type ?? 'driverEntity';

  factory _$BookingEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingEntityImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'latitude_origin')
  final double latitudeOrigin;
  @override
  @JsonKey(name: 'longitude_origin')
  final double longitudeOrigin;
  @override
  @JsonKey(name: 'address_origin')
  final String addressOrigin;
  @override
  @JsonKey(name: 'latitude_destination')
  final double latitudeDestination;
  @override
  @JsonKey(name: 'longitude_destination')
  final double longitudeDestination;
  @override
  @JsonKey(name: 'address_destination')
  final String addressDestination;
  @override
  final double distance;
  @override
  @JsonKey(name: 'time_estimate')
  final int timeEstimate;
  @override
  final double price;
  @override
  final String status;
  @override
  final UserCustomerEntity customer;
  @override
  final UserDriverEntity? driver;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Booking.driverEntity(id: $id, latitudeOrigin: $latitudeOrigin, longitudeOrigin: $longitudeOrigin, addressOrigin: $addressOrigin, latitudeDestination: $latitudeDestination, longitudeDestination: $longitudeDestination, addressDestination: $addressDestination, distance: $distance, timeEstimate: $timeEstimate, price: $price, status: $status, customer: $customer, driver: $driver, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitudeOrigin, latitudeOrigin) ||
                other.latitudeOrigin == latitudeOrigin) &&
            (identical(other.longitudeOrigin, longitudeOrigin) ||
                other.longitudeOrigin == longitudeOrigin) &&
            (identical(other.addressOrigin, addressOrigin) ||
                other.addressOrigin == addressOrigin) &&
            (identical(other.latitudeDestination, latitudeDestination) ||
                other.latitudeDestination == latitudeDestination) &&
            (identical(other.longitudeDestination, longitudeDestination) ||
                other.longitudeDestination == longitudeDestination) &&
            (identical(other.addressDestination, addressDestination) ||
                other.addressDestination == addressDestination) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.timeEstimate, timeEstimate) ||
                other.timeEstimate == timeEstimate) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.customer, customer) &&
            const DeepCollectionEquality().equals(other.driver, driver) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      latitudeOrigin,
      longitudeOrigin,
      addressOrigin,
      latitudeDestination,
      longitudeDestination,
      addressDestination,
      distance,
      timeEstimate,
      price,
      status,
      const DeepCollectionEquality().hash(customer),
      const DeepCollectionEquality().hash(driver),
      createdAt);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingEntityImplCopyWith<_$BookingEntityImpl> get copyWith =>
      __$$BookingEntityImplCopyWithImpl<_$BookingEntityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate,
            double price,
            String status,
            UserCustomerEntity customer,
            UserDriverEntity? driver,
            @JsonKey(name: 'created_at') String createdAt)
        driverEntity,
    required TResult Function(
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate)
        createParamEntity,
    required TResult Function(int id, String status) statusParamEntity,
    required TResult Function(int id, String text) notifEntity,
  }) {
    return driverEntity(
        id,
        latitudeOrigin,
        longitudeOrigin,
        addressOrigin,
        latitudeDestination,
        longitudeDestination,
        addressDestination,
        distance,
        timeEstimate,
        price,
        status,
        customer,
        driver,
        createdAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate,
            double price,
            String status,
            UserCustomerEntity customer,
            UserDriverEntity? driver,
            @JsonKey(name: 'created_at') String createdAt)?
        driverEntity,
    TResult? Function(
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate)?
        createParamEntity,
    TResult? Function(int id, String status)? statusParamEntity,
    TResult? Function(int id, String text)? notifEntity,
  }) {
    return driverEntity?.call(
        id,
        latitudeOrigin,
        longitudeOrigin,
        addressOrigin,
        latitudeDestination,
        longitudeDestination,
        addressDestination,
        distance,
        timeEstimate,
        price,
        status,
        customer,
        driver,
        createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate,
            double price,
            String status,
            UserCustomerEntity customer,
            UserDriverEntity? driver,
            @JsonKey(name: 'created_at') String createdAt)?
        driverEntity,
    TResult Function(
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate)?
        createParamEntity,
    TResult Function(int id, String status)? statusParamEntity,
    TResult Function(int id, String text)? notifEntity,
    required TResult orElse(),
  }) {
    if (driverEntity != null) {
      return driverEntity(
          id,
          latitudeOrigin,
          longitudeOrigin,
          addressOrigin,
          latitudeDestination,
          longitudeDestination,
          addressDestination,
          distance,
          timeEstimate,
          price,
          status,
          customer,
          driver,
          createdAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingEntity value) driverEntity,
    required TResult Function(BookingCreateParamEntity value) createParamEntity,
    required TResult Function(BookingStatusParamEntity value) statusParamEntity,
    required TResult Function(BookingNotifEntity value) notifEntity,
  }) {
    return driverEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingEntity value)? driverEntity,
    TResult? Function(BookingCreateParamEntity value)? createParamEntity,
    TResult? Function(BookingStatusParamEntity value)? statusParamEntity,
    TResult? Function(BookingNotifEntity value)? notifEntity,
  }) {
    return driverEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingEntity value)? driverEntity,
    TResult Function(BookingCreateParamEntity value)? createParamEntity,
    TResult Function(BookingStatusParamEntity value)? statusParamEntity,
    TResult Function(BookingNotifEntity value)? notifEntity,
    required TResult orElse(),
  }) {
    if (driverEntity != null) {
      return driverEntity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingEntityImplToJson(
      this,
    );
  }
}

abstract class BookingEntity implements Booking {
  factory BookingEntity(
      {required final int id,
      @JsonKey(name: 'latitude_origin') required final double latitudeOrigin,
      @JsonKey(name: 'longitude_origin') required final double longitudeOrigin,
      @JsonKey(name: 'address_origin') required final String addressOrigin,
      @JsonKey(name: 'latitude_destination')
      required final double latitudeDestination,
      @JsonKey(name: 'longitude_destination')
      required final double longitudeDestination,
      @JsonKey(name: 'address_destination')
      required final String addressDestination,
      required final double distance,
      @JsonKey(name: 'time_estimate') required final int timeEstimate,
      required final double price,
      required final String status,
      required final UserCustomerEntity customer,
      final UserDriverEntity? driver,
      @JsonKey(name: 'created_at')
      required final String createdAt}) = _$BookingEntityImpl;

  factory BookingEntity.fromJson(Map<String, dynamic> json) =
      _$BookingEntityImpl.fromJson;

  int get id;
  @JsonKey(name: 'latitude_origin')
  double get latitudeOrigin;
  @JsonKey(name: 'longitude_origin')
  double get longitudeOrigin;
  @JsonKey(name: 'address_origin')
  String get addressOrigin;
  @JsonKey(name: 'latitude_destination')
  double get latitudeDestination;
  @JsonKey(name: 'longitude_destination')
  double get longitudeDestination;
  @JsonKey(name: 'address_destination')
  String get addressDestination;
  double get distance;
  @JsonKey(name: 'time_estimate')
  int get timeEstimate;
  double get price;
  String get status;
  UserCustomerEntity get customer;
  UserDriverEntity? get driver;
  @JsonKey(name: 'created_at')
  String get createdAt;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingEntityImplCopyWith<_$BookingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingCreateParamEntityImplCopyWith<$Res> {
  factory _$$BookingCreateParamEntityImplCopyWith(
          _$BookingCreateParamEntityImpl value,
          $Res Function(_$BookingCreateParamEntityImpl) then) =
      __$$BookingCreateParamEntityImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude_origin') double latitudeOrigin,
      @JsonKey(name: 'longitude_origin') double longitudeOrigin,
      @JsonKey(name: 'address_origin') String addressOrigin,
      @JsonKey(name: 'latitude_destination') double latitudeDestination,
      @JsonKey(name: 'longitude_destination') double longitudeDestination,
      @JsonKey(name: 'address_destination') String addressDestination,
      double distance,
      @JsonKey(name: 'time_estimate') int timeEstimate});
}

/// @nodoc
class __$$BookingCreateParamEntityImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingCreateParamEntityImpl>
    implements _$$BookingCreateParamEntityImplCopyWith<$Res> {
  __$$BookingCreateParamEntityImplCopyWithImpl(
      _$BookingCreateParamEntityImpl _value,
      $Res Function(_$BookingCreateParamEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitudeOrigin = null,
    Object? longitudeOrigin = null,
    Object? addressOrigin = null,
    Object? latitudeDestination = null,
    Object? longitudeDestination = null,
    Object? addressDestination = null,
    Object? distance = null,
    Object? timeEstimate = null,
  }) {
    return _then(_$BookingCreateParamEntityImpl(
      latitudeOrigin: null == latitudeOrigin
          ? _value.latitudeOrigin
          : latitudeOrigin // ignore: cast_nullable_to_non_nullable
              as double,
      longitudeOrigin: null == longitudeOrigin
          ? _value.longitudeOrigin
          : longitudeOrigin // ignore: cast_nullable_to_non_nullable
              as double,
      addressOrigin: null == addressOrigin
          ? _value.addressOrigin
          : addressOrigin // ignore: cast_nullable_to_non_nullable
              as String,
      latitudeDestination: null == latitudeDestination
          ? _value.latitudeDestination
          : latitudeDestination // ignore: cast_nullable_to_non_nullable
              as double,
      longitudeDestination: null == longitudeDestination
          ? _value.longitudeDestination
          : longitudeDestination // ignore: cast_nullable_to_non_nullable
              as double,
      addressDestination: null == addressDestination
          ? _value.addressDestination
          : addressDestination // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      timeEstimate: null == timeEstimate
          ? _value.timeEstimate
          : timeEstimate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingCreateParamEntityImpl implements BookingCreateParamEntity {
  _$BookingCreateParamEntityImpl(
      {@JsonKey(name: 'latitude_origin') required this.latitudeOrigin,
      @JsonKey(name: 'longitude_origin') required this.longitudeOrigin,
      @JsonKey(name: 'address_origin') required this.addressOrigin,
      @JsonKey(name: 'latitude_destination') required this.latitudeDestination,
      @JsonKey(name: 'longitude_destination')
      required this.longitudeDestination,
      @JsonKey(name: 'address_destination') required this.addressDestination,
      required this.distance,
      @JsonKey(name: 'time_estimate') required this.timeEstimate,
      final String? $type})
      : $type = $type ?? 'createParamEntity';

  factory _$BookingCreateParamEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingCreateParamEntityImplFromJson(json);

  @override
  @JsonKey(name: 'latitude_origin')
  final double latitudeOrigin;
  @override
  @JsonKey(name: 'longitude_origin')
  final double longitudeOrigin;
  @override
  @JsonKey(name: 'address_origin')
  final String addressOrigin;
  @override
  @JsonKey(name: 'latitude_destination')
  final double latitudeDestination;
  @override
  @JsonKey(name: 'longitude_destination')
  final double longitudeDestination;
  @override
  @JsonKey(name: 'address_destination')
  final String addressDestination;
  @override
  final double distance;
  @override
  @JsonKey(name: 'time_estimate')
  final int timeEstimate;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Booking.createParamEntity(latitudeOrigin: $latitudeOrigin, longitudeOrigin: $longitudeOrigin, addressOrigin: $addressOrigin, latitudeDestination: $latitudeDestination, longitudeDestination: $longitudeDestination, addressDestination: $addressDestination, distance: $distance, timeEstimate: $timeEstimate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingCreateParamEntityImpl &&
            (identical(other.latitudeOrigin, latitudeOrigin) ||
                other.latitudeOrigin == latitudeOrigin) &&
            (identical(other.longitudeOrigin, longitudeOrigin) ||
                other.longitudeOrigin == longitudeOrigin) &&
            (identical(other.addressOrigin, addressOrigin) ||
                other.addressOrigin == addressOrigin) &&
            (identical(other.latitudeDestination, latitudeDestination) ||
                other.latitudeDestination == latitudeDestination) &&
            (identical(other.longitudeDestination, longitudeDestination) ||
                other.longitudeDestination == longitudeDestination) &&
            (identical(other.addressDestination, addressDestination) ||
                other.addressDestination == addressDestination) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.timeEstimate, timeEstimate) ||
                other.timeEstimate == timeEstimate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitudeOrigin,
      longitudeOrigin,
      addressOrigin,
      latitudeDestination,
      longitudeDestination,
      addressDestination,
      distance,
      timeEstimate);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingCreateParamEntityImplCopyWith<_$BookingCreateParamEntityImpl>
      get copyWith => __$$BookingCreateParamEntityImplCopyWithImpl<
          _$BookingCreateParamEntityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate,
            double price,
            String status,
            UserCustomerEntity customer,
            UserDriverEntity? driver,
            @JsonKey(name: 'created_at') String createdAt)
        driverEntity,
    required TResult Function(
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate)
        createParamEntity,
    required TResult Function(int id, String status) statusParamEntity,
    required TResult Function(int id, String text) notifEntity,
  }) {
    return createParamEntity(
        latitudeOrigin,
        longitudeOrigin,
        addressOrigin,
        latitudeDestination,
        longitudeDestination,
        addressDestination,
        distance,
        timeEstimate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate,
            double price,
            String status,
            UserCustomerEntity customer,
            UserDriverEntity? driver,
            @JsonKey(name: 'created_at') String createdAt)?
        driverEntity,
    TResult? Function(
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate)?
        createParamEntity,
    TResult? Function(int id, String status)? statusParamEntity,
    TResult? Function(int id, String text)? notifEntity,
  }) {
    return createParamEntity?.call(
        latitudeOrigin,
        longitudeOrigin,
        addressOrigin,
        latitudeDestination,
        longitudeDestination,
        addressDestination,
        distance,
        timeEstimate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate,
            double price,
            String status,
            UserCustomerEntity customer,
            UserDriverEntity? driver,
            @JsonKey(name: 'created_at') String createdAt)?
        driverEntity,
    TResult Function(
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate)?
        createParamEntity,
    TResult Function(int id, String status)? statusParamEntity,
    TResult Function(int id, String text)? notifEntity,
    required TResult orElse(),
  }) {
    if (createParamEntity != null) {
      return createParamEntity(
          latitudeOrigin,
          longitudeOrigin,
          addressOrigin,
          latitudeDestination,
          longitudeDestination,
          addressDestination,
          distance,
          timeEstimate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingEntity value) driverEntity,
    required TResult Function(BookingCreateParamEntity value) createParamEntity,
    required TResult Function(BookingStatusParamEntity value) statusParamEntity,
    required TResult Function(BookingNotifEntity value) notifEntity,
  }) {
    return createParamEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingEntity value)? driverEntity,
    TResult? Function(BookingCreateParamEntity value)? createParamEntity,
    TResult? Function(BookingStatusParamEntity value)? statusParamEntity,
    TResult? Function(BookingNotifEntity value)? notifEntity,
  }) {
    return createParamEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingEntity value)? driverEntity,
    TResult Function(BookingCreateParamEntity value)? createParamEntity,
    TResult Function(BookingStatusParamEntity value)? statusParamEntity,
    TResult Function(BookingNotifEntity value)? notifEntity,
    required TResult orElse(),
  }) {
    if (createParamEntity != null) {
      return createParamEntity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingCreateParamEntityImplToJson(
      this,
    );
  }
}

abstract class BookingCreateParamEntity implements Booking {
  factory BookingCreateParamEntity(
      {@JsonKey(name: 'latitude_origin') required final double latitudeOrigin,
      @JsonKey(name: 'longitude_origin') required final double longitudeOrigin,
      @JsonKey(name: 'address_origin') required final String addressOrigin,
      @JsonKey(name: 'latitude_destination')
      required final double latitudeDestination,
      @JsonKey(name: 'longitude_destination')
      required final double longitudeDestination,
      @JsonKey(name: 'address_destination')
      required final String addressDestination,
      required final double distance,
      @JsonKey(name: 'time_estimate')
      required final int timeEstimate}) = _$BookingCreateParamEntityImpl;

  factory BookingCreateParamEntity.fromJson(Map<String, dynamic> json) =
      _$BookingCreateParamEntityImpl.fromJson;

  @JsonKey(name: 'latitude_origin')
  double get latitudeOrigin;
  @JsonKey(name: 'longitude_origin')
  double get longitudeOrigin;
  @JsonKey(name: 'address_origin')
  String get addressOrigin;
  @JsonKey(name: 'latitude_destination')
  double get latitudeDestination;
  @JsonKey(name: 'longitude_destination')
  double get longitudeDestination;
  @JsonKey(name: 'address_destination')
  String get addressDestination;
  double get distance;
  @JsonKey(name: 'time_estimate')
  int get timeEstimate;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingCreateParamEntityImplCopyWith<_$BookingCreateParamEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingStatusParamEntityImplCopyWith<$Res> {
  factory _$$BookingStatusParamEntityImplCopyWith(
          _$BookingStatusParamEntityImpl value,
          $Res Function(_$BookingStatusParamEntityImpl) then) =
      __$$BookingStatusParamEntityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String status});
}

/// @nodoc
class __$$BookingStatusParamEntityImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingStatusParamEntityImpl>
    implements _$$BookingStatusParamEntityImplCopyWith<$Res> {
  __$$BookingStatusParamEntityImplCopyWithImpl(
      _$BookingStatusParamEntityImpl _value,
      $Res Function(_$BookingStatusParamEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
  }) {
    return _then(_$BookingStatusParamEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingStatusParamEntityImpl implements BookingStatusParamEntity {
  _$BookingStatusParamEntityImpl(
      {required this.id, required this.status, final String? $type})
      : $type = $type ?? 'statusParamEntity';

  factory _$BookingStatusParamEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingStatusParamEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String status;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Booking.statusParamEntity(id: $id, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingStatusParamEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingStatusParamEntityImplCopyWith<_$BookingStatusParamEntityImpl>
      get copyWith => __$$BookingStatusParamEntityImplCopyWithImpl<
          _$BookingStatusParamEntityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate,
            double price,
            String status,
            UserCustomerEntity customer,
            UserDriverEntity? driver,
            @JsonKey(name: 'created_at') String createdAt)
        driverEntity,
    required TResult Function(
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate)
        createParamEntity,
    required TResult Function(int id, String status) statusParamEntity,
    required TResult Function(int id, String text) notifEntity,
  }) {
    return statusParamEntity(id, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate,
            double price,
            String status,
            UserCustomerEntity customer,
            UserDriverEntity? driver,
            @JsonKey(name: 'created_at') String createdAt)?
        driverEntity,
    TResult? Function(
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate)?
        createParamEntity,
    TResult? Function(int id, String status)? statusParamEntity,
    TResult? Function(int id, String text)? notifEntity,
  }) {
    return statusParamEntity?.call(id, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate,
            double price,
            String status,
            UserCustomerEntity customer,
            UserDriverEntity? driver,
            @JsonKey(name: 'created_at') String createdAt)?
        driverEntity,
    TResult Function(
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate)?
        createParamEntity,
    TResult Function(int id, String status)? statusParamEntity,
    TResult Function(int id, String text)? notifEntity,
    required TResult orElse(),
  }) {
    if (statusParamEntity != null) {
      return statusParamEntity(id, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingEntity value) driverEntity,
    required TResult Function(BookingCreateParamEntity value) createParamEntity,
    required TResult Function(BookingStatusParamEntity value) statusParamEntity,
    required TResult Function(BookingNotifEntity value) notifEntity,
  }) {
    return statusParamEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingEntity value)? driverEntity,
    TResult? Function(BookingCreateParamEntity value)? createParamEntity,
    TResult? Function(BookingStatusParamEntity value)? statusParamEntity,
    TResult? Function(BookingNotifEntity value)? notifEntity,
  }) {
    return statusParamEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingEntity value)? driverEntity,
    TResult Function(BookingCreateParamEntity value)? createParamEntity,
    TResult Function(BookingStatusParamEntity value)? statusParamEntity,
    TResult Function(BookingNotifEntity value)? notifEntity,
    required TResult orElse(),
  }) {
    if (statusParamEntity != null) {
      return statusParamEntity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingStatusParamEntityImplToJson(
      this,
    );
  }
}

abstract class BookingStatusParamEntity implements Booking {
  factory BookingStatusParamEntity(
      {required final int id,
      required final String status}) = _$BookingStatusParamEntityImpl;

  factory BookingStatusParamEntity.fromJson(Map<String, dynamic> json) =
      _$BookingStatusParamEntityImpl.fromJson;

  int get id;
  String get status;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingStatusParamEntityImplCopyWith<_$BookingStatusParamEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingNotifEntityImplCopyWith<$Res> {
  factory _$$BookingNotifEntityImplCopyWith(_$BookingNotifEntityImpl value,
          $Res Function(_$BookingNotifEntityImpl) then) =
      __$$BookingNotifEntityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String text});
}

/// @nodoc
class __$$BookingNotifEntityImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingNotifEntityImpl>
    implements _$$BookingNotifEntityImplCopyWith<$Res> {
  __$$BookingNotifEntityImplCopyWithImpl(_$BookingNotifEntityImpl _value,
      $Res Function(_$BookingNotifEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_$BookingNotifEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingNotifEntityImpl implements BookingNotifEntity {
  _$BookingNotifEntityImpl(
      {required this.id, required this.text, final String? $type})
      : $type = $type ?? 'notifEntity';

  factory _$BookingNotifEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingNotifEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String text;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Booking.notifEntity(id: $id, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingNotifEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingNotifEntityImplCopyWith<_$BookingNotifEntityImpl> get copyWith =>
      __$$BookingNotifEntityImplCopyWithImpl<_$BookingNotifEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate,
            double price,
            String status,
            UserCustomerEntity customer,
            UserDriverEntity? driver,
            @JsonKey(name: 'created_at') String createdAt)
        driverEntity,
    required TResult Function(
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate)
        createParamEntity,
    required TResult Function(int id, String status) statusParamEntity,
    required TResult Function(int id, String text) notifEntity,
  }) {
    return notifEntity(id, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate,
            double price,
            String status,
            UserCustomerEntity customer,
            UserDriverEntity? driver,
            @JsonKey(name: 'created_at') String createdAt)?
        driverEntity,
    TResult? Function(
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate)?
        createParamEntity,
    TResult? Function(int id, String status)? statusParamEntity,
    TResult? Function(int id, String text)? notifEntity,
  }) {
    return notifEntity?.call(id, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate,
            double price,
            String status,
            UserCustomerEntity customer,
            UserDriverEntity? driver,
            @JsonKey(name: 'created_at') String createdAt)?
        driverEntity,
    TResult Function(
            @JsonKey(name: 'latitude_origin') double latitudeOrigin,
            @JsonKey(name: 'longitude_origin') double longitudeOrigin,
            @JsonKey(name: 'address_origin') String addressOrigin,
            @JsonKey(name: 'latitude_destination') double latitudeDestination,
            @JsonKey(name: 'longitude_destination') double longitudeDestination,
            @JsonKey(name: 'address_destination') String addressDestination,
            double distance,
            @JsonKey(name: 'time_estimate') int timeEstimate)?
        createParamEntity,
    TResult Function(int id, String status)? statusParamEntity,
    TResult Function(int id, String text)? notifEntity,
    required TResult orElse(),
  }) {
    if (notifEntity != null) {
      return notifEntity(id, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingEntity value) driverEntity,
    required TResult Function(BookingCreateParamEntity value) createParamEntity,
    required TResult Function(BookingStatusParamEntity value) statusParamEntity,
    required TResult Function(BookingNotifEntity value) notifEntity,
  }) {
    return notifEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingEntity value)? driverEntity,
    TResult? Function(BookingCreateParamEntity value)? createParamEntity,
    TResult? Function(BookingStatusParamEntity value)? statusParamEntity,
    TResult? Function(BookingNotifEntity value)? notifEntity,
  }) {
    return notifEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingEntity value)? driverEntity,
    TResult Function(BookingCreateParamEntity value)? createParamEntity,
    TResult Function(BookingStatusParamEntity value)? statusParamEntity,
    TResult Function(BookingNotifEntity value)? notifEntity,
    required TResult orElse(),
  }) {
    if (notifEntity != null) {
      return notifEntity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingNotifEntityImplToJson(
      this,
    );
  }
}

abstract class BookingNotifEntity implements Booking {
  factory BookingNotifEntity(
      {required final int id,
      required final String text}) = _$BookingNotifEntityImpl;

  factory BookingNotifEntity.fromJson(Map<String, dynamic> json) =
      _$BookingNotifEntityImpl.fromJson;

  int get id;
  String get text;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingNotifEntityImplCopyWith<_$BookingNotifEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
