// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  TokenProperties get tokens => throw _privateConstructorUsedError;
  UserProperties get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
  @useResult
  $Res call({TokenProperties tokens, UserProperties user});

  $TokenPropertiesCopyWith<$Res> get tokens;
  $UserPropertiesCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as TokenProperties,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProperties,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenPropertiesCopyWith<$Res> get tokens {
    return $TokenPropertiesCopyWith<$Res>(_value.tokens, (value) {
      return _then(_value.copyWith(tokens: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserPropertiesCopyWith<$Res> get user {
    return $UserPropertiesCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginResponseCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$_LoginResponseCopyWith(
          _$_LoginResponse value, $Res Function(_$_LoginResponse) then) =
      __$$_LoginResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TokenProperties tokens, UserProperties user});

  @override
  $TokenPropertiesCopyWith<$Res> get tokens;
  @override
  $UserPropertiesCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LoginResponseCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$_LoginResponse>
    implements _$$_LoginResponseCopyWith<$Res> {
  __$$_LoginResponseCopyWithImpl(
      _$_LoginResponse _value, $Res Function(_$_LoginResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? user = null,
  }) {
    return _then(_$_LoginResponse(
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as TokenProperties,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProperties,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResponse implements _LoginResponse {
  const _$_LoginResponse({required this.tokens, required this.user});

  factory _$_LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseFromJson(json);

  @override
  final TokenProperties tokens;
  @override
  final UserProperties user;

  @override
  String toString() {
    return 'LoginResponse(tokens: $tokens, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponse &&
            (identical(other.tokens, tokens) || other.tokens == tokens) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tokens, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginResponseCopyWith<_$_LoginResponse> get copyWith =>
      __$$_LoginResponseCopyWithImpl<_$_LoginResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseToJson(
      this,
    );
  }
}

abstract class _LoginResponse implements LoginResponse {
  const factory _LoginResponse(
      {required final TokenProperties tokens,
      required final UserProperties user}) = _$_LoginResponse;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$_LoginResponse.fromJson;

  @override
  TokenProperties get tokens;
  @override
  UserProperties get user;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResponseCopyWith<_$_LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenProperties _$TokenPropertiesFromJson(Map<String, dynamic> json) {
  return _TokenProperties.fromJson(json);
}

/// @nodoc
mixin _$TokenProperties {
  String get accesToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenPropertiesCopyWith<TokenProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenPropertiesCopyWith<$Res> {
  factory $TokenPropertiesCopyWith(
          TokenProperties value, $Res Function(TokenProperties) then) =
      _$TokenPropertiesCopyWithImpl<$Res, TokenProperties>;
  @useResult
  $Res call({String accesToken, String refreshToken});
}

/// @nodoc
class _$TokenPropertiesCopyWithImpl<$Res, $Val extends TokenProperties>
    implements $TokenPropertiesCopyWith<$Res> {
  _$TokenPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accesToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accesToken: null == accesToken
          ? _value.accesToken
          : accesToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenPropertiesCopyWith<$Res>
    implements $TokenPropertiesCopyWith<$Res> {
  factory _$$_TokenPropertiesCopyWith(
          _$_TokenProperties value, $Res Function(_$_TokenProperties) then) =
      __$$_TokenPropertiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accesToken, String refreshToken});
}

/// @nodoc
class __$$_TokenPropertiesCopyWithImpl<$Res>
    extends _$TokenPropertiesCopyWithImpl<$Res, _$_TokenProperties>
    implements _$$_TokenPropertiesCopyWith<$Res> {
  __$$_TokenPropertiesCopyWithImpl(
      _$_TokenProperties _value, $Res Function(_$_TokenProperties) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accesToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$_TokenProperties(
      accesToken: null == accesToken
          ? _value.accesToken
          : accesToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenProperties implements _TokenProperties {
  const _$_TokenProperties(
      {required this.accesToken, required this.refreshToken});

  factory _$_TokenProperties.fromJson(Map<String, dynamic> json) =>
      _$$_TokenPropertiesFromJson(json);

  @override
  final String accesToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'TokenProperties(accesToken: $accesToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenProperties &&
            (identical(other.accesToken, accesToken) ||
                other.accesToken == accesToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accesToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenPropertiesCopyWith<_$_TokenProperties> get copyWith =>
      __$$_TokenPropertiesCopyWithImpl<_$_TokenProperties>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenPropertiesToJson(
      this,
    );
  }
}

abstract class _TokenProperties implements TokenProperties {
  const factory _TokenProperties(
      {required final String accesToken,
      required final String refreshToken}) = _$_TokenProperties;

  factory _TokenProperties.fromJson(Map<String, dynamic> json) =
      _$_TokenProperties.fromJson;

  @override
  String get accesToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_TokenPropertiesCopyWith<_$_TokenProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProperties _$UserPropertiesFromJson(Map<String, dynamic> json) {
  return _UserProperties.fromJson(json);
}

/// @nodoc
mixin _$UserProperties {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPropertiesCopyWith<UserProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPropertiesCopyWith<$Res> {
  factory $UserPropertiesCopyWith(
          UserProperties value, $Res Function(UserProperties) then) =
      _$UserPropertiesCopyWithImpl<$Res, UserProperties>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$UserPropertiesCopyWithImpl<$Res, $Val extends UserProperties>
    implements $UserPropertiesCopyWith<$Res> {
  _$UserPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserPropertiesCopyWith<$Res>
    implements $UserPropertiesCopyWith<$Res> {
  factory _$$_UserPropertiesCopyWith(
          _$_UserProperties value, $Res Function(_$_UserProperties) then) =
      __$$_UserPropertiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_UserPropertiesCopyWithImpl<$Res>
    extends _$UserPropertiesCopyWithImpl<$Res, _$_UserProperties>
    implements _$$_UserPropertiesCopyWith<$Res> {
  __$$_UserPropertiesCopyWithImpl(
      _$_UserProperties _value, $Res Function(_$_UserProperties) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_UserProperties(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProperties implements _UserProperties {
  _$_UserProperties({required this.id});

  factory _$_UserProperties.fromJson(Map<String, dynamic> json) =>
      _$$_UserPropertiesFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'UserProperties(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProperties &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPropertiesCopyWith<_$_UserProperties> get copyWith =>
      __$$_UserPropertiesCopyWithImpl<_$_UserProperties>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserPropertiesToJson(
      this,
    );
  }
}

abstract class _UserProperties implements UserProperties {
  factory _UserProperties({required final String id}) = _$_UserProperties;

  factory _UserProperties.fromJson(Map<String, dynamic> json) =
      _$_UserProperties.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_UserPropertiesCopyWith<_$_UserProperties> get copyWith =>
      throw _privateConstructorUsedError;
}
