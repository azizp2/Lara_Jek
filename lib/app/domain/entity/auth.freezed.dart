// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Auth _$AuthFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loginParamEntity':
      return AuthLoginParamEntity.fromJson(json);
    case 'registerParamEntity':
      return AuthRegisterParamEntity.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Auth',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Auth {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginParamEntity,
    required TResult Function(String name, String email, String password,
            @JsonKey(name: 'whatsapp') String phone)
        registerParamEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginParamEntity,
    TResult? Function(String name, String email, String password,
            @JsonKey(name: 'whatsapp') String phone)?
        registerParamEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginParamEntity,
    TResult Function(String name, String email, String password,
            @JsonKey(name: 'whatsapp') String phone)?
        registerParamEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoginParamEntity value) loginParamEntity,
    required TResult Function(AuthRegisterParamEntity value)
        registerParamEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLoginParamEntity value)? loginParamEntity,
    TResult? Function(AuthRegisterParamEntity value)? registerParamEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginParamEntity value)? loginParamEntity,
    TResult Function(AuthRegisterParamEntity value)? registerParamEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Auth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Auth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthCopyWith<Auth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCopyWith<$Res> {
  factory $AuthCopyWith(Auth value, $Res Function(Auth) then) =
      _$AuthCopyWithImpl<$Res, Auth>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$AuthCopyWithImpl<$Res, $Val extends Auth>
    implements $AuthCopyWith<$Res> {
  _$AuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Auth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthLoginParamEntityImplCopyWith<$Res>
    implements $AuthCopyWith<$Res> {
  factory _$$AuthLoginParamEntityImplCopyWith(_$AuthLoginParamEntityImpl value,
          $Res Function(_$AuthLoginParamEntityImpl) then) =
      __$$AuthLoginParamEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthLoginParamEntityImplCopyWithImpl<$Res>
    extends _$AuthCopyWithImpl<$Res, _$AuthLoginParamEntityImpl>
    implements _$$AuthLoginParamEntityImplCopyWith<$Res> {
  __$$AuthLoginParamEntityImplCopyWithImpl(_$AuthLoginParamEntityImpl _value,
      $Res Function(_$AuthLoginParamEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Auth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthLoginParamEntityImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthLoginParamEntityImpl implements AuthLoginParamEntity {
  _$AuthLoginParamEntityImpl(
      {required this.email, required this.password, final String? $type})
      : $type = $type ?? 'loginParamEntity';

  factory _$AuthLoginParamEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthLoginParamEntityImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Auth.loginParamEntity(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoginParamEntityImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of Auth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLoginParamEntityImplCopyWith<_$AuthLoginParamEntityImpl>
      get copyWith =>
          __$$AuthLoginParamEntityImplCopyWithImpl<_$AuthLoginParamEntityImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginParamEntity,
    required TResult Function(String name, String email, String password,
            @JsonKey(name: 'whatsapp') String phone)
        registerParamEntity,
  }) {
    return loginParamEntity(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginParamEntity,
    TResult? Function(String name, String email, String password,
            @JsonKey(name: 'whatsapp') String phone)?
        registerParamEntity,
  }) {
    return loginParamEntity?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginParamEntity,
    TResult Function(String name, String email, String password,
            @JsonKey(name: 'whatsapp') String phone)?
        registerParamEntity,
    required TResult orElse(),
  }) {
    if (loginParamEntity != null) {
      return loginParamEntity(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoginParamEntity value) loginParamEntity,
    required TResult Function(AuthRegisterParamEntity value)
        registerParamEntity,
  }) {
    return loginParamEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLoginParamEntity value)? loginParamEntity,
    TResult? Function(AuthRegisterParamEntity value)? registerParamEntity,
  }) {
    return loginParamEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginParamEntity value)? loginParamEntity,
    TResult Function(AuthRegisterParamEntity value)? registerParamEntity,
    required TResult orElse(),
  }) {
    if (loginParamEntity != null) {
      return loginParamEntity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthLoginParamEntityImplToJson(
      this,
    );
  }
}

abstract class AuthLoginParamEntity implements Auth {
  factory AuthLoginParamEntity(
      {required final String email,
      required final String password}) = _$AuthLoginParamEntityImpl;

  factory AuthLoginParamEntity.fromJson(Map<String, dynamic> json) =
      _$AuthLoginParamEntityImpl.fromJson;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of Auth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthLoginParamEntityImplCopyWith<_$AuthLoginParamEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthRegisterParamEntityImplCopyWith<$Res>
    implements $AuthCopyWith<$Res> {
  factory _$$AuthRegisterParamEntityImplCopyWith(
          _$AuthRegisterParamEntityImpl value,
          $Res Function(_$AuthRegisterParamEntityImpl) then) =
      __$$AuthRegisterParamEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      @JsonKey(name: 'whatsapp') String phone});
}

/// @nodoc
class __$$AuthRegisterParamEntityImplCopyWithImpl<$Res>
    extends _$AuthCopyWithImpl<$Res, _$AuthRegisterParamEntityImpl>
    implements _$$AuthRegisterParamEntityImplCopyWith<$Res> {
  __$$AuthRegisterParamEntityImplCopyWithImpl(
      _$AuthRegisterParamEntityImpl _value,
      $Res Function(_$AuthRegisterParamEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Auth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? phone = null,
  }) {
    return _then(_$AuthRegisterParamEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
class _$AuthRegisterParamEntityImpl implements AuthRegisterParamEntity {
  _$AuthRegisterParamEntityImpl(
      {required this.name,
      required this.email,
      required this.password,
      @JsonKey(name: 'whatsapp') required this.phone,
      final String? $type})
      : $type = $type ?? 'registerParamEntity';

  factory _$AuthRegisterParamEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthRegisterParamEntityImplFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  @JsonKey(name: 'whatsapp')
  final String phone;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Auth.registerParamEntity(name: $name, email: $email, password: $password, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRegisterParamEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, password, phone);

  /// Create a copy of Auth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRegisterParamEntityImplCopyWith<_$AuthRegisterParamEntityImpl>
      get copyWith => __$$AuthRegisterParamEntityImplCopyWithImpl<
          _$AuthRegisterParamEntityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginParamEntity,
    required TResult Function(String name, String email, String password,
            @JsonKey(name: 'whatsapp') String phone)
        registerParamEntity,
  }) {
    return registerParamEntity(name, email, password, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginParamEntity,
    TResult? Function(String name, String email, String password,
            @JsonKey(name: 'whatsapp') String phone)?
        registerParamEntity,
  }) {
    return registerParamEntity?.call(name, email, password, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginParamEntity,
    TResult Function(String name, String email, String password,
            @JsonKey(name: 'whatsapp') String phone)?
        registerParamEntity,
    required TResult orElse(),
  }) {
    if (registerParamEntity != null) {
      return registerParamEntity(name, email, password, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoginParamEntity value) loginParamEntity,
    required TResult Function(AuthRegisterParamEntity value)
        registerParamEntity,
  }) {
    return registerParamEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLoginParamEntity value)? loginParamEntity,
    TResult? Function(AuthRegisterParamEntity value)? registerParamEntity,
  }) {
    return registerParamEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginParamEntity value)? loginParamEntity,
    TResult Function(AuthRegisterParamEntity value)? registerParamEntity,
    required TResult orElse(),
  }) {
    if (registerParamEntity != null) {
      return registerParamEntity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthRegisterParamEntityImplToJson(
      this,
    );
  }
}

abstract class AuthRegisterParamEntity implements Auth {
  factory AuthRegisterParamEntity(
          {required final String name,
          required final String email,
          required final String password,
          @JsonKey(name: 'whatsapp') required final String phone}) =
      _$AuthRegisterParamEntityImpl;

  factory AuthRegisterParamEntity.fromJson(Map<String, dynamic> json) =
      _$AuthRegisterParamEntityImpl.fromJson;

  String get name;
  @override
  String get email;
  @override
  String get password;
  @JsonKey(name: 'whatsapp')
  String get phone;

  /// Create a copy of Auth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthRegisterParamEntityImplCopyWith<_$AuthRegisterParamEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
