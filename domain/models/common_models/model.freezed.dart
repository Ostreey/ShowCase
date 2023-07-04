// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get city => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get postCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({String city, String street, String postCode});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? street = null,
    Object? postCode = null,
  }) {
    return _then(_value.copyWith(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: null == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String city, String street, String postCode});
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$_Location>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? street = null,
    Object? postCode = null,
  }) {
    return _then(_$_Location(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: null == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  const _$_Location(
      {required this.city, required this.street, required this.postCode});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final String city;
  @override
  final String street;
  @override
  final String postCode;

  @override
  String toString() {
    return 'Location(city: $city, street: $street, postCode: $postCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.postCode, postCode) ||
                other.postCode == postCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, city, street, postCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final String city,
      required final String street,
      required final String postCode}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  String get city;
  @override
  String get street;
  @override
  String get postCode;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
mixin _$Customer {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  int get spend => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call(
      {String id, String name, String email, String imagePath, int spend});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? imagePath = null,
    Object? spend = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      spend: null == spend
          ? _value.spend
          : spend // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory _$$_CustomerCopyWith(
          _$_Customer value, $Res Function(_$_Customer) then) =
      __$$_CustomerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String email, String imagePath, int spend});
}

/// @nodoc
class __$$_CustomerCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$_Customer>
    implements _$$_CustomerCopyWith<$Res> {
  __$$_CustomerCopyWithImpl(
      _$_Customer _value, $Res Function(_$_Customer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? imagePath = null,
    Object? spend = null,
  }) {
    return _then(_$_Customer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      spend: null == spend
          ? _value.spend
          : spend // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Customer implements _Customer {
  const _$_Customer(
      {required this.id,
      required this.name,
      required this.email,
      required this.imagePath,
      required this.spend});

  factory _$_Customer.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String imagePath;
  @override
  final int spend;

  @override
  String toString() {
    return 'Customer(id: $id, name: $name, email: $email, imagePath: $imagePath, spend: $spend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Customer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.spend, spend) || other.spend == spend));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, email, imagePath, spend);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerCopyWith<_$_Customer> get copyWith =>
      __$$_CustomerCopyWithImpl<_$_Customer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerToJson(
      this,
    );
  }
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {required final String id,
      required final String name,
      required final String email,
      required final String imagePath,
      required final int spend}) = _$_Customer;

  factory _Customer.fromJson(Map<String, dynamic> json) = _$_Customer.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get imagePath;
  @override
  int get spend;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerCopyWith<_$_Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

Cargo _$CargoFromJson(Map<String, dynamic> json) {
  return _Cargo.fromJson(json);
}

/// @nodoc
mixin _$Cargo {
  int get weight => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get lenght => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CargoCopyWith<Cargo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CargoCopyWith<$Res> {
  factory $CargoCopyWith(Cargo value, $Res Function(Cargo) then) =
      _$CargoCopyWithImpl<$Res, Cargo>;
  @useResult
  $Res call({int weight, int width, int height, int lenght, String? imagePath});
}

/// @nodoc
class _$CargoCopyWithImpl<$Res, $Val extends Cargo>
    implements $CargoCopyWith<$Res> {
  _$CargoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? width = null,
    Object? height = null,
    Object? lenght = null,
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      lenght: null == lenght
          ? _value.lenght
          : lenght // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CargoCopyWith<$Res> implements $CargoCopyWith<$Res> {
  factory _$$_CargoCopyWith(_$_Cargo value, $Res Function(_$_Cargo) then) =
      __$$_CargoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int weight, int width, int height, int lenght, String? imagePath});
}

/// @nodoc
class __$$_CargoCopyWithImpl<$Res> extends _$CargoCopyWithImpl<$Res, _$_Cargo>
    implements _$$_CargoCopyWith<$Res> {
  __$$_CargoCopyWithImpl(_$_Cargo _value, $Res Function(_$_Cargo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? width = null,
    Object? height = null,
    Object? lenght = null,
    Object? imagePath = freezed,
  }) {
    return _then(_$_Cargo(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      lenght: null == lenght
          ? _value.lenght
          : lenght // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cargo implements _Cargo {
  _$_Cargo(
      {required this.weight,
      required this.width,
      required this.height,
      required this.lenght,
      this.imagePath});

  factory _$_Cargo.fromJson(Map<String, dynamic> json) =>
      _$$_CargoFromJson(json);

  @override
  final int weight;
  @override
  final int width;
  @override
  final int height;
  @override
  final int lenght;
  @override
  final String? imagePath;

  @override
  String toString() {
    return 'Cargo(weight: $weight, width: $width, height: $height, lenght: $lenght, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cargo &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.lenght, lenght) || other.lenght == lenght) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, weight, width, height, lenght, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CargoCopyWith<_$_Cargo> get copyWith =>
      __$$_CargoCopyWithImpl<_$_Cargo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CargoToJson(
      this,
    );
  }
}

abstract class _Cargo implements Cargo {
  factory _Cargo(
      {required final int weight,
      required final int width,
      required final int height,
      required final int lenght,
      final String? imagePath}) = _$_Cargo;

  factory _Cargo.fromJson(Map<String, dynamic> json) = _$_Cargo.fromJson;

  @override
  int get weight;
  @override
  int get width;
  @override
  int get height;
  @override
  int get lenght;
  @override
  String? get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_CargoCopyWith<_$_Cargo> get copyWith =>
      throw _privateConstructorUsedError;
}

Addition _$AdditionFromJson(Map<String, dynamic> json) {
  return _Addition.fromJson(json);
}

/// @nodoc
mixin _$Addition {
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionCopyWith<Addition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionCopyWith<$Res> {
  factory $AdditionCopyWith(Addition value, $Res Function(Addition) then) =
      _$AdditionCopyWithImpl<$Res, Addition>;
  @useResult
  $Res call({String name, double price});
}

/// @nodoc
class _$AdditionCopyWithImpl<$Res, $Val extends Addition>
    implements $AdditionCopyWith<$Res> {
  _$AdditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdditionCopyWith<$Res> implements $AdditionCopyWith<$Res> {
  factory _$$_AdditionCopyWith(
          _$_Addition value, $Res Function(_$_Addition) then) =
      __$$_AdditionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double price});
}

/// @nodoc
class __$$_AdditionCopyWithImpl<$Res>
    extends _$AdditionCopyWithImpl<$Res, _$_Addition>
    implements _$$_AdditionCopyWith<$Res> {
  __$$_AdditionCopyWithImpl(
      _$_Addition _value, $Res Function(_$_Addition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$_Addition(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Addition implements _Addition {
  _$_Addition({required this.name, required this.price});

  factory _$_Addition.fromJson(Map<String, dynamic> json) =>
      _$$_AdditionFromJson(json);

  @override
  final String name;
  @override
  final double price;

  @override
  String toString() {
    return 'Addition(name: $name, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Addition &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdditionCopyWith<_$_Addition> get copyWith =>
      __$$_AdditionCopyWithImpl<_$_Addition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdditionToJson(
      this,
    );
  }
}

abstract class _Addition implements Addition {
  factory _Addition({required final String name, required final double price}) =
      _$_Addition;

  factory _Addition.fromJson(Map<String, dynamic> json) = _$_Addition.fromJson;

  @override
  String get name;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$_AdditionCopyWith<_$_Addition> get copyWith =>
      throw _privateConstructorUsedError;
}

CostsSummary _$CostsSummaryFromJson(Map<String, dynamic> json) {
  return _CostsSummary.fromJson(json);
}

/// @nodoc
mixin _$CostsSummary {
  double? get pricePerKm => throw _privateConstructorUsedError;
  double? get pricePerDistance => throw _privateConstructorUsedError;
  List<Addition>? get additions => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get serviceFee => throw _privateConstructorUsedError;
  double? get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostsSummaryCopyWith<CostsSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostsSummaryCopyWith<$Res> {
  factory $CostsSummaryCopyWith(
          CostsSummary value, $Res Function(CostsSummary) then) =
      _$CostsSummaryCopyWithImpl<$Res, CostsSummary>;
  @useResult
  $Res call(
      {double? pricePerKm,
      double? pricePerDistance,
      List<Addition>? additions,
      double? price,
      double? serviceFee,
      double? totalPrice});
}

/// @nodoc
class _$CostsSummaryCopyWithImpl<$Res, $Val extends CostsSummary>
    implements $CostsSummaryCopyWith<$Res> {
  _$CostsSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pricePerKm = freezed,
    Object? pricePerDistance = freezed,
    Object? additions = freezed,
    Object? price = freezed,
    Object? serviceFee = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      pricePerKm: freezed == pricePerKm
          ? _value.pricePerKm
          : pricePerKm // ignore: cast_nullable_to_non_nullable
              as double?,
      pricePerDistance: freezed == pricePerDistance
          ? _value.pricePerDistance
          : pricePerDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      additions: freezed == additions
          ? _value.additions
          : additions // ignore: cast_nullable_to_non_nullable
              as List<Addition>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      serviceFee: freezed == serviceFee
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CostsSummaryCopyWith<$Res>
    implements $CostsSummaryCopyWith<$Res> {
  factory _$$_CostsSummaryCopyWith(
          _$_CostsSummary value, $Res Function(_$_CostsSummary) then) =
      __$$_CostsSummaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? pricePerKm,
      double? pricePerDistance,
      List<Addition>? additions,
      double? price,
      double? serviceFee,
      double? totalPrice});
}

/// @nodoc
class __$$_CostsSummaryCopyWithImpl<$Res>
    extends _$CostsSummaryCopyWithImpl<$Res, _$_CostsSummary>
    implements _$$_CostsSummaryCopyWith<$Res> {
  __$$_CostsSummaryCopyWithImpl(
      _$_CostsSummary _value, $Res Function(_$_CostsSummary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pricePerKm = freezed,
    Object? pricePerDistance = freezed,
    Object? additions = freezed,
    Object? price = freezed,
    Object? serviceFee = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_$_CostsSummary(
      pricePerKm: freezed == pricePerKm
          ? _value.pricePerKm
          : pricePerKm // ignore: cast_nullable_to_non_nullable
              as double?,
      pricePerDistance: freezed == pricePerDistance
          ? _value.pricePerDistance
          : pricePerDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      additions: freezed == additions
          ? _value._additions
          : additions // ignore: cast_nullable_to_non_nullable
              as List<Addition>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      serviceFee: freezed == serviceFee
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CostsSummary implements _CostsSummary {
  _$_CostsSummary(
      {this.pricePerKm,
      this.pricePerDistance,
      final List<Addition>? additions,
      this.price,
      this.serviceFee,
      this.totalPrice})
      : _additions = additions;

  factory _$_CostsSummary.fromJson(Map<String, dynamic> json) =>
      _$$_CostsSummaryFromJson(json);

  @override
  final double? pricePerKm;
  @override
  final double? pricePerDistance;
  final List<Addition>? _additions;
  @override
  List<Addition>? get additions {
    final value = _additions;
    if (value == null) return null;
    if (_additions is EqualUnmodifiableListView) return _additions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? price;
  @override
  final double? serviceFee;
  @override
  final double? totalPrice;

  @override
  String toString() {
    return 'CostsSummary(pricePerKm: $pricePerKm, pricePerDistance: $pricePerDistance, additions: $additions, price: $price, serviceFee: $serviceFee, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CostsSummary &&
            (identical(other.pricePerKm, pricePerKm) ||
                other.pricePerKm == pricePerKm) &&
            (identical(other.pricePerDistance, pricePerDistance) ||
                other.pricePerDistance == pricePerDistance) &&
            const DeepCollectionEquality()
                .equals(other._additions, _additions) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.serviceFee, serviceFee) ||
                other.serviceFee == serviceFee) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pricePerKm,
      pricePerDistance,
      const DeepCollectionEquality().hash(_additions),
      price,
      serviceFee,
      totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CostsSummaryCopyWith<_$_CostsSummary> get copyWith =>
      __$$_CostsSummaryCopyWithImpl<_$_CostsSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CostsSummaryToJson(
      this,
    );
  }
}

abstract class _CostsSummary implements CostsSummary {
  factory _CostsSummary(
      {final double? pricePerKm,
      final double? pricePerDistance,
      final List<Addition>? additions,
      final double? price,
      final double? serviceFee,
      final double? totalPrice}) = _$_CostsSummary;

  factory _CostsSummary.fromJson(Map<String, dynamic> json) =
      _$_CostsSummary.fromJson;

  @override
  double? get pricePerKm;
  @override
  double? get pricePerDistance;
  @override
  List<Addition>? get additions;
  @override
  double? get price;
  @override
  double? get serviceFee;
  @override
  double? get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$_CostsSummaryCopyWith<_$_CostsSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  DateTime get date => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String get operation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call({DateTime date, double value, String operation});
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
    Object? operation = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$_PaymentCopyWith(
          _$_Payment value, $Res Function(_$_Payment) then) =
      __$$_PaymentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, double value, String operation});
}

/// @nodoc
class __$$_PaymentCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$_Payment>
    implements _$$_PaymentCopyWith<$Res> {
  __$$_PaymentCopyWithImpl(_$_Payment _value, $Res Function(_$_Payment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
    Object? operation = null,
  }) {
    return _then(_$_Payment(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Payment implements _Payment {
  _$_Payment(
      {required this.date, required this.value, required this.operation});

  factory _$_Payment.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentFromJson(json);

  @override
  final DateTime date;
  @override
  final double value;
  @override
  final String operation;

  @override
  String toString() {
    return 'Payment(date: $date, value: $value, operation: $operation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Payment &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.operation, operation) ||
                other.operation == operation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, value, operation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentCopyWith<_$_Payment> get copyWith =>
      __$$_PaymentCopyWithImpl<_$_Payment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentToJson(
      this,
    );
  }
}

abstract class _Payment implements Payment {
  factory _Payment(
      {required final DateTime date,
      required final double value,
      required final String operation}) = _$_Payment;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$_Payment.fromJson;

  @override
  DateTime get date;
  @override
  double get value;
  @override
  String get operation;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentCopyWith<_$_Payment> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverDetailsResponse _$DriverDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _DriverDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$DriverDetailsResponse {
  DriverDetailsProperties get driver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverDetailsResponseCopyWith<DriverDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverDetailsResponseCopyWith<$Res> {
  factory $DriverDetailsResponseCopyWith(DriverDetailsResponse value,
          $Res Function(DriverDetailsResponse) then) =
      _$DriverDetailsResponseCopyWithImpl<$Res, DriverDetailsResponse>;
  @useResult
  $Res call({DriverDetailsProperties driver});

  $DriverDetailsPropertiesCopyWith<$Res> get driver;
}

/// @nodoc
class _$DriverDetailsResponseCopyWithImpl<$Res,
        $Val extends DriverDetailsResponse>
    implements $DriverDetailsResponseCopyWith<$Res> {
  _$DriverDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driver = null,
  }) {
    return _then(_value.copyWith(
      driver: null == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as DriverDetailsProperties,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverDetailsPropertiesCopyWith<$Res> get driver {
    return $DriverDetailsPropertiesCopyWith<$Res>(_value.driver, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DriverDetailsResponseCopyWith<$Res>
    implements $DriverDetailsResponseCopyWith<$Res> {
  factory _$$_DriverDetailsResponseCopyWith(_$_DriverDetailsResponse value,
          $Res Function(_$_DriverDetailsResponse) then) =
      __$$_DriverDetailsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DriverDetailsProperties driver});

  @override
  $DriverDetailsPropertiesCopyWith<$Res> get driver;
}

/// @nodoc
class __$$_DriverDetailsResponseCopyWithImpl<$Res>
    extends _$DriverDetailsResponseCopyWithImpl<$Res, _$_DriverDetailsResponse>
    implements _$$_DriverDetailsResponseCopyWith<$Res> {
  __$$_DriverDetailsResponseCopyWithImpl(_$_DriverDetailsResponse _value,
      $Res Function(_$_DriverDetailsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driver = null,
  }) {
    return _then(_$_DriverDetailsResponse(
      driver: null == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as DriverDetailsProperties,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverDetailsResponse implements _DriverDetailsResponse {
  const _$_DriverDetailsResponse({required this.driver});

  factory _$_DriverDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DriverDetailsResponseFromJson(json);

  @override
  final DriverDetailsProperties driver;

  @override
  String toString() {
    return 'DriverDetailsResponse(driver: $driver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverDetailsResponse &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, driver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverDetailsResponseCopyWith<_$_DriverDetailsResponse> get copyWith =>
      __$$_DriverDetailsResponseCopyWithImpl<_$_DriverDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverDetailsResponseToJson(
      this,
    );
  }
}

abstract class _DriverDetailsResponse implements DriverDetailsResponse {
  const factory _DriverDetailsResponse(
          {required final DriverDetailsProperties driver}) =
      _$_DriverDetailsResponse;

  factory _DriverDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_DriverDetailsResponse.fromJson;

  @override
  DriverDetailsProperties get driver;
  @override
  @JsonKey(ignore: true)
  _$$_DriverDetailsResponseCopyWith<_$_DriverDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverDetailsProperties _$DriverDetailsPropertiesFromJson(
    Map<String, dynamic> json) {
  return _DriverDetailsProperties.fromJson(json);
}

/// @nodoc
mixin _$DriverDetailsProperties {
  String? get id => throw _privateConstructorUsedError;
  String? get created => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get ratedContracts => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  String? get driverLicensePath => throw _privateConstructorUsedError;
  String? get vehiculeTypeName => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  double? get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverDetailsPropertiesCopyWith<DriverDetailsProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverDetailsPropertiesCopyWith<$Res> {
  factory $DriverDetailsPropertiesCopyWith(DriverDetailsProperties value,
          $Res Function(DriverDetailsProperties) then) =
      _$DriverDetailsPropertiesCopyWithImpl<$Res, DriverDetailsProperties>;
  @useResult
  $Res call(
      {String? id,
      String? created,
      double? rating,
      int? ratedContracts,
      String? name,
      String? email,
      String? imagePath,
      String? driverLicensePath,
      String? vehiculeTypeName,
      String? state,
      double? balance});
}

/// @nodoc
class _$DriverDetailsPropertiesCopyWithImpl<$Res,
        $Val extends DriverDetailsProperties>
    implements $DriverDetailsPropertiesCopyWith<$Res> {
  _$DriverDetailsPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? created = freezed,
    Object? rating = freezed,
    Object? ratedContracts = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? imagePath = freezed,
    Object? driverLicensePath = freezed,
    Object? vehiculeTypeName = freezed,
    Object? state = freezed,
    Object? balance = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratedContracts: freezed == ratedContracts
          ? _value.ratedContracts
          : ratedContracts // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      driverLicensePath: freezed == driverLicensePath
          ? _value.driverLicensePath
          : driverLicensePath // ignore: cast_nullable_to_non_nullable
              as String?,
      vehiculeTypeName: freezed == vehiculeTypeName
          ? _value.vehiculeTypeName
          : vehiculeTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DriverDetailsPropertiesCopyWith<$Res>
    implements $DriverDetailsPropertiesCopyWith<$Res> {
  factory _$$_DriverDetailsPropertiesCopyWith(_$_DriverDetailsProperties value,
          $Res Function(_$_DriverDetailsProperties) then) =
      __$$_DriverDetailsPropertiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? created,
      double? rating,
      int? ratedContracts,
      String? name,
      String? email,
      String? imagePath,
      String? driverLicensePath,
      String? vehiculeTypeName,
      String? state,
      double? balance});
}

/// @nodoc
class __$$_DriverDetailsPropertiesCopyWithImpl<$Res>
    extends _$DriverDetailsPropertiesCopyWithImpl<$Res,
        _$_DriverDetailsProperties>
    implements _$$_DriverDetailsPropertiesCopyWith<$Res> {
  __$$_DriverDetailsPropertiesCopyWithImpl(_$_DriverDetailsProperties _value,
      $Res Function(_$_DriverDetailsProperties) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? created = freezed,
    Object? rating = freezed,
    Object? ratedContracts = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? imagePath = freezed,
    Object? driverLicensePath = freezed,
    Object? vehiculeTypeName = freezed,
    Object? state = freezed,
    Object? balance = freezed,
  }) {
    return _then(_$_DriverDetailsProperties(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratedContracts: freezed == ratedContracts
          ? _value.ratedContracts
          : ratedContracts // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      driverLicensePath: freezed == driverLicensePath
          ? _value.driverLicensePath
          : driverLicensePath // ignore: cast_nullable_to_non_nullable
              as String?,
      vehiculeTypeName: freezed == vehiculeTypeName
          ? _value.vehiculeTypeName
          : vehiculeTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverDetailsProperties implements _DriverDetailsProperties {
  _$_DriverDetailsProperties(
      {this.id,
      this.created,
      this.rating,
      this.ratedContracts,
      this.name,
      this.email,
      this.imagePath,
      this.driverLicensePath,
      this.vehiculeTypeName,
      this.state,
      this.balance});

  factory _$_DriverDetailsProperties.fromJson(Map<String, dynamic> json) =>
      _$$_DriverDetailsPropertiesFromJson(json);

  @override
  final String? id;
  @override
  final String? created;
  @override
  final double? rating;
  @override
  final int? ratedContracts;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? imagePath;
  @override
  final String? driverLicensePath;
  @override
  final String? vehiculeTypeName;
  @override
  final String? state;
  @override
  final double? balance;

  @override
  String toString() {
    return 'DriverDetailsProperties(id: $id, created: $created, rating: $rating, ratedContracts: $ratedContracts, name: $name, email: $email, imagePath: $imagePath, driverLicensePath: $driverLicensePath, vehiculeTypeName: $vehiculeTypeName, state: $state, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverDetailsProperties &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratedContracts, ratedContracts) ||
                other.ratedContracts == ratedContracts) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.driverLicensePath, driverLicensePath) ||
                other.driverLicensePath == driverLicensePath) &&
            (identical(other.vehiculeTypeName, vehiculeTypeName) ||
                other.vehiculeTypeName == vehiculeTypeName) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created,
      rating,
      ratedContracts,
      name,
      email,
      imagePath,
      driverLicensePath,
      vehiculeTypeName,
      state,
      balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverDetailsPropertiesCopyWith<_$_DriverDetailsProperties>
      get copyWith =>
          __$$_DriverDetailsPropertiesCopyWithImpl<_$_DriverDetailsProperties>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverDetailsPropertiesToJson(
      this,
    );
  }
}

abstract class _DriverDetailsProperties implements DriverDetailsProperties {
  factory _DriverDetailsProperties(
      {final String? id,
      final String? created,
      final double? rating,
      final int? ratedContracts,
      final String? name,
      final String? email,
      final String? imagePath,
      final String? driverLicensePath,
      final String? vehiculeTypeName,
      final String? state,
      final double? balance}) = _$_DriverDetailsProperties;

  factory _DriverDetailsProperties.fromJson(Map<String, dynamic> json) =
      _$_DriverDetailsProperties.fromJson;

  @override
  String? get id;
  @override
  String? get created;
  @override
  double? get rating;
  @override
  int? get ratedContracts;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get imagePath;
  @override
  String? get driverLicensePath;
  @override
  String? get vehiculeTypeName;
  @override
  String? get state;
  @override
  double? get balance;
  @override
  @JsonKey(ignore: true)
  _$$_DriverDetailsPropertiesCopyWith<_$_DriverDetailsProperties>
      get copyWith => throw _privateConstructorUsedError;
}
