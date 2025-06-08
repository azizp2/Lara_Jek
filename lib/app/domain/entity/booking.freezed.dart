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
  return BookingEntity.fromJson(json);
}

/// @nodoc
mixin _$Booking {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude_origin')
  double get latitudeOrigin => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude_origin')
  double get longitudeOrigin => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_origin')
  String get addressOrigin => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude_destination')
  double get latitudeDestination => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude_destination')
  double get longitudeDestination => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_destination')
  String get addressDestination => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_estimate')
  int get timeEstimate => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  UserCustomerEntity get customer => throw _privateConstructorUsedError;
  UserDriverEntity? get driver => throw _privateConstructorUsedError;
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
            UserDriverEntity? driver)
        driverEntity,
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
            UserDriverEntity? driver)?
        driverEntity,
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
            UserDriverEntity? driver)?
        driverEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingEntity value) driverEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingEntity value)? driverEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingEntity value)? driverEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Booking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
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
      UserDriverEntity? driver});
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
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingEntityImplCopyWith<$Res>
    implements $BookingCopyWith<$Res> {
  factory _$$BookingEntityImplCopyWith(
          _$BookingEntityImpl value, $Res Function(_$BookingEntityImpl) then) =
      __$$BookingEntityImplCopyWithImpl<$Res>;
  @override
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
      UserDriverEntity? driver});
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
      this.driver});

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
  String toString() {
    return 'Booking.driverEntity(id: $id, latitudeOrigin: $latitudeOrigin, longitudeOrigin: $longitudeOrigin, addressOrigin: $addressOrigin, latitudeDestination: $latitudeDestination, longitudeDestination: $longitudeDestination, addressDestination: $addressDestination, distance: $distance, timeEstimate: $timeEstimate, price: $price, status: $status, customer: $customer, driver: $driver)';
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
            const DeepCollectionEquality().equals(other.driver, driver));
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
      const DeepCollectionEquality().hash(driver));

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
            UserDriverEntity? driver)
        driverEntity,
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
        driver);
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
            UserDriverEntity? driver)?
        driverEntity,
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
        driver);
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
            UserDriverEntity? driver)?
        driverEntity,
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
          driver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingEntity value) driverEntity,
  }) {
    return driverEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingEntity value)? driverEntity,
  }) {
    return driverEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingEntity value)? driverEntity,
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
      final UserDriverEntity? driver}) = _$BookingEntityImpl;

  factory BookingEntity.fromJson(Map<String, dynamic> json) =
      _$BookingEntityImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'latitude_origin')
  double get latitudeOrigin;
  @override
  @JsonKey(name: 'longitude_origin')
  double get longitudeOrigin;
  @override
  @JsonKey(name: 'address_origin')
  String get addressOrigin;
  @override
  @JsonKey(name: 'latitude_destination')
  double get latitudeDestination;
  @override
  @JsonKey(name: 'longitude_destination')
  double get longitudeDestination;
  @override
  @JsonKey(name: 'address_destination')
  String get addressDestination;
  @override
  double get distance;
  @override
  @JsonKey(name: 'time_estimate')
  int get timeEstimate;
  @override
  double get price;
  @override
  String get status;
  @override
  UserCustomerEntity get customer;
  @override
  UserDriverEntity? get driver;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingEntityImplCopyWith<_$BookingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
