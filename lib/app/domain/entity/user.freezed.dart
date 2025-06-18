// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'customerEntity':
      return UserCustomerEntity.fromJson(json);
    case 'driverEntity':
      return UserDriverEntity.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'User',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'whatsapp')
  String get phone => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String name, String email, String role,
            @JsonKey(name: 'whatsapp') String phone)
        customerEntity,
    required TResult Function(
            int id,
            String name,
            String email,
            String role,
            @JsonKey(name: 'photo_url') String photoUrl,
            @JsonKey(name: 'whatsapp') String phone,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'vehicle_number') String VehicleNumber,
            @JsonKey(name: 'avg_rating') double avgRating)
        driverEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String name, String email, String role,
            @JsonKey(name: 'whatsapp') String phone)?
        customerEntity,
    TResult? Function(
            int id,
            String name,
            String email,
            String role,
            @JsonKey(name: 'photo_url') String photoUrl,
            @JsonKey(name: 'whatsapp') String phone,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'vehicle_number') String VehicleNumber,
            @JsonKey(name: 'avg_rating') double avgRating)?
        driverEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String name, String email, String role,
            @JsonKey(name: 'whatsapp') String phone)?
        customerEntity,
    TResult Function(
            int id,
            String name,
            String email,
            String role,
            @JsonKey(name: 'photo_url') String photoUrl,
            @JsonKey(name: 'whatsapp') String phone,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'vehicle_number') String VehicleNumber,
            @JsonKey(name: 'avg_rating') double avgRating)?
        driverEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserCustomerEntity value) customerEntity,
    required TResult Function(UserDriverEntity value) driverEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserCustomerEntity value)? customerEntity,
    TResult? Function(UserDriverEntity value)? driverEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCustomerEntity value)? customerEntity,
    TResult Function(UserDriverEntity value)? driverEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String role,
      @JsonKey(name: 'whatsapp') String phone});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? role = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCustomerEntityImplCopyWith<$Res>
    implements $UserCopyWith<$Res> {
  factory _$$UserCustomerEntityImplCopyWith(_$UserCustomerEntityImpl value,
          $Res Function(_$UserCustomerEntityImpl) then) =
      __$$UserCustomerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String role,
      @JsonKey(name: 'whatsapp') String phone});
}

/// @nodoc
class __$$UserCustomerEntityImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserCustomerEntityImpl>
    implements _$$UserCustomerEntityImplCopyWith<$Res> {
  __$$UserCustomerEntityImplCopyWithImpl(_$UserCustomerEntityImpl _value,
      $Res Function(_$UserCustomerEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? role = null,
    Object? phone = null,
  }) {
    return _then(_$UserCustomerEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCustomerEntityImpl implements UserCustomerEntity {
  _$UserCustomerEntityImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.role,
      @JsonKey(name: 'whatsapp') required this.phone,
      final String? $type})
      : $type = $type ?? 'customerEntity';

  factory _$UserCustomerEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCustomerEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String role;
  @override
  @JsonKey(name: 'whatsapp')
  final String phone;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.customerEntity(id: $id, name: $name, email: $email, role: $role, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCustomerEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, role, phone);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCustomerEntityImplCopyWith<_$UserCustomerEntityImpl> get copyWith =>
      __$$UserCustomerEntityImplCopyWithImpl<_$UserCustomerEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String name, String email, String role,
            @JsonKey(name: 'whatsapp') String phone)
        customerEntity,
    required TResult Function(
            int id,
            String name,
            String email,
            String role,
            @JsonKey(name: 'photo_url') String photoUrl,
            @JsonKey(name: 'whatsapp') String phone,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'vehicle_number') String VehicleNumber,
            @JsonKey(name: 'avg_rating') double avgRating)
        driverEntity,
  }) {
    return customerEntity(id, name, email, role, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String name, String email, String role,
            @JsonKey(name: 'whatsapp') String phone)?
        customerEntity,
    TResult? Function(
            int id,
            String name,
            String email,
            String role,
            @JsonKey(name: 'photo_url') String photoUrl,
            @JsonKey(name: 'whatsapp') String phone,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'vehicle_number') String VehicleNumber,
            @JsonKey(name: 'avg_rating') double avgRating)?
        driverEntity,
  }) {
    return customerEntity?.call(id, name, email, role, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String name, String email, String role,
            @JsonKey(name: 'whatsapp') String phone)?
        customerEntity,
    TResult Function(
            int id,
            String name,
            String email,
            String role,
            @JsonKey(name: 'photo_url') String photoUrl,
            @JsonKey(name: 'whatsapp') String phone,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'vehicle_number') String VehicleNumber,
            @JsonKey(name: 'avg_rating') double avgRating)?
        driverEntity,
    required TResult orElse(),
  }) {
    if (customerEntity != null) {
      return customerEntity(id, name, email, role, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserCustomerEntity value) customerEntity,
    required TResult Function(UserDriverEntity value) driverEntity,
  }) {
    return customerEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserCustomerEntity value)? customerEntity,
    TResult? Function(UserDriverEntity value)? driverEntity,
  }) {
    return customerEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCustomerEntity value)? customerEntity,
    TResult Function(UserDriverEntity value)? driverEntity,
    required TResult orElse(),
  }) {
    if (customerEntity != null) {
      return customerEntity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCustomerEntityImplToJson(
      this,
    );
  }
}

abstract class UserCustomerEntity implements User {
  factory UserCustomerEntity(
          {required final int id,
          required final String name,
          required final String email,
          required final String role,
          @JsonKey(name: 'whatsapp') required final String phone}) =
      _$UserCustomerEntityImpl;

  factory UserCustomerEntity.fromJson(Map<String, dynamic> json) =
      _$UserCustomerEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get role;
  @override
  @JsonKey(name: 'whatsapp')
  String get phone;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCustomerEntityImplCopyWith<_$UserCustomerEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDriverEntityImplCopyWith<$Res>
    implements $UserCopyWith<$Res> {
  factory _$$UserDriverEntityImplCopyWith(_$UserDriverEntityImpl value,
          $Res Function(_$UserDriverEntityImpl) then) =
      __$$UserDriverEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String role,
      @JsonKey(name: 'photo_url') String photoUrl,
      @JsonKey(name: 'whatsapp') String phone,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'vehicle_number') String VehicleNumber,
      @JsonKey(name: 'avg_rating') double avgRating});
}

/// @nodoc
class __$$UserDriverEntityImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserDriverEntityImpl>
    implements _$$UserDriverEntityImplCopyWith<$Res> {
  __$$UserDriverEntityImplCopyWithImpl(_$UserDriverEntityImpl _value,
      $Res Function(_$UserDriverEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? role = null,
    Object? photoUrl = null,
    Object? phone = null,
    Object? isActive = null,
    Object? VehicleNumber = null,
    Object? avgRating = null,
  }) {
    return _then(_$UserDriverEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      VehicleNumber: null == VehicleNumber
          ? _value.VehicleNumber
          : VehicleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      avgRating: null == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDriverEntityImpl implements UserDriverEntity {
  _$UserDriverEntityImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.role,
      @JsonKey(name: 'photo_url') required this.photoUrl,
      @JsonKey(name: 'whatsapp') required this.phone,
      @JsonKey(name: 'is_active') required this.isActive,
      @JsonKey(name: 'vehicle_number') required this.VehicleNumber,
      @JsonKey(name: 'avg_rating') required this.avgRating,
      final String? $type})
      : $type = $type ?? 'driverEntity';

  factory _$UserDriverEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDriverEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String role;
  @override
  @JsonKey(name: 'photo_url')
  final String photoUrl;
  @override
  @JsonKey(name: 'whatsapp')
  final String phone;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'vehicle_number')
  final String VehicleNumber;
  @override
  @JsonKey(name: 'avg_rating')
  final double avgRating;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.driverEntity(id: $id, name: $name, email: $email, role: $role, photoUrl: $photoUrl, phone: $phone, isActive: $isActive, VehicleNumber: $VehicleNumber, avgRating: $avgRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDriverEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.VehicleNumber, VehicleNumber) ||
                other.VehicleNumber == VehicleNumber) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, role, photoUrl,
      phone, isActive, VehicleNumber, avgRating);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDriverEntityImplCopyWith<_$UserDriverEntityImpl> get copyWith =>
      __$$UserDriverEntityImplCopyWithImpl<_$UserDriverEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String name, String email, String role,
            @JsonKey(name: 'whatsapp') String phone)
        customerEntity,
    required TResult Function(
            int id,
            String name,
            String email,
            String role,
            @JsonKey(name: 'photo_url') String photoUrl,
            @JsonKey(name: 'whatsapp') String phone,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'vehicle_number') String VehicleNumber,
            @JsonKey(name: 'avg_rating') double avgRating)
        driverEntity,
  }) {
    return driverEntity(id, name, email, role, photoUrl, phone, isActive,
        VehicleNumber, avgRating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String name, String email, String role,
            @JsonKey(name: 'whatsapp') String phone)?
        customerEntity,
    TResult? Function(
            int id,
            String name,
            String email,
            String role,
            @JsonKey(name: 'photo_url') String photoUrl,
            @JsonKey(name: 'whatsapp') String phone,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'vehicle_number') String VehicleNumber,
            @JsonKey(name: 'avg_rating') double avgRating)?
        driverEntity,
  }) {
    return driverEntity?.call(id, name, email, role, photoUrl, phone, isActive,
        VehicleNumber, avgRating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String name, String email, String role,
            @JsonKey(name: 'whatsapp') String phone)?
        customerEntity,
    TResult Function(
            int id,
            String name,
            String email,
            String role,
            @JsonKey(name: 'photo_url') String photoUrl,
            @JsonKey(name: 'whatsapp') String phone,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'vehicle_number') String VehicleNumber,
            @JsonKey(name: 'avg_rating') double avgRating)?
        driverEntity,
    required TResult orElse(),
  }) {
    if (driverEntity != null) {
      return driverEntity(id, name, email, role, photoUrl, phone, isActive,
          VehicleNumber, avgRating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserCustomerEntity value) customerEntity,
    required TResult Function(UserDriverEntity value) driverEntity,
  }) {
    return driverEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserCustomerEntity value)? customerEntity,
    TResult? Function(UserDriverEntity value)? driverEntity,
  }) {
    return driverEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCustomerEntity value)? customerEntity,
    TResult Function(UserDriverEntity value)? driverEntity,
    required TResult orElse(),
  }) {
    if (driverEntity != null) {
      return driverEntity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDriverEntityImplToJson(
      this,
    );
  }
}

abstract class UserDriverEntity implements User {
  factory UserDriverEntity(
          {required final int id,
          required final String name,
          required final String email,
          required final String role,
          @JsonKey(name: 'photo_url') required final String photoUrl,
          @JsonKey(name: 'whatsapp') required final String phone,
          @JsonKey(name: 'is_active') required final bool isActive,
          @JsonKey(name: 'vehicle_number') required final String VehicleNumber,
          @JsonKey(name: 'avg_rating') required final double avgRating}) =
      _$UserDriverEntityImpl;

  factory UserDriverEntity.fromJson(Map<String, dynamic> json) =
      _$UserDriverEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get role;
  @JsonKey(name: 'photo_url')
  String get photoUrl;
  @override
  @JsonKey(name: 'whatsapp')
  String get phone;
  @JsonKey(name: 'is_active')
  bool get isActive;
  @JsonKey(name: 'vehicle_number')
  String get VehicleNumber;
  @JsonKey(name: 'avg_rating')
  double get avgRating;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDriverEntityImplCopyWith<_$UserDriverEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
