// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContractDetailsProperties _$ContractDetailsPropertiesFromJson(
    Map<String, dynamic> json) {
  return _ContractDetailsProperties.fromJson(json);
}

/// @nodoc
mixin _$ContractDetailsProperties {
  String get id => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get vehiculeTypeName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get tittle => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;
  String get pickupDate => throw _privateConstructorUsedError;
  String get deliveryDate => throw _privateConstructorUsedError;
  Cargo get cargo => throw _privateConstructorUsedError;
  Location get origin => throw _privateConstructorUsedError;
  Location get destination => throw _privateConstructorUsedError;
  bool get requireLoadingCrew => throw _privateConstructorUsedError;
  bool get requireUnloadingCrew => throw _privateConstructorUsedError;
  String get paymentState => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get stateChanged => throw _privateConstructorUsedError;
  bool get isInDispute => throw _privateConstructorUsedError;
  String? get pickUpCargoImagePath => throw _privateConstructorUsedError;
  String? get pickUpProofImagePath => throw _privateConstructorUsedError;
  String? get deliveryCargoImagePath => throw _privateConstructorUsedError;
  String? get deliveryProofImagePath => throw _privateConstructorUsedError;
  CostsSummary get costsSummary => throw _privateConstructorUsedError;
  List<Payment>? get payments => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractDetailsPropertiesCopyWith<ContractDetailsProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractDetailsPropertiesCopyWith<$Res> {
  factory $ContractDetailsPropertiesCopyWith(ContractDetailsProperties value,
          $Res Function(ContractDetailsProperties) then) =
      _$ContractDetailsPropertiesCopyWithImpl<$Res, ContractDetailsProperties>;
  @useResult
  $Res call(
      {String id,
      String created,
      double rating,
      String vehiculeTypeName,
      String description,
      String tittle,
      int distance,
      String pickupDate,
      String deliveryDate,
      Cargo cargo,
      Location origin,
      Location destination,
      bool requireLoadingCrew,
      bool requireUnloadingCrew,
      String paymentState,
      String state,
      String stateChanged,
      bool isInDispute,
      String? pickUpCargoImagePath,
      String? pickUpProofImagePath,
      String? deliveryCargoImagePath,
      String? deliveryProofImagePath,
      CostsSummary costsSummary,
      List<Payment>? payments,
      Customer customer});

  $CargoCopyWith<$Res> get cargo;
  $LocationCopyWith<$Res> get origin;
  $LocationCopyWith<$Res> get destination;
  $CostsSummaryCopyWith<$Res> get costsSummary;
  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class _$ContractDetailsPropertiesCopyWithImpl<$Res,
        $Val extends ContractDetailsProperties>
    implements $ContractDetailsPropertiesCopyWith<$Res> {
  _$ContractDetailsPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? rating = null,
    Object? vehiculeTypeName = null,
    Object? description = null,
    Object? tittle = null,
    Object? distance = null,
    Object? pickupDate = null,
    Object? deliveryDate = null,
    Object? cargo = null,
    Object? origin = null,
    Object? destination = null,
    Object? requireLoadingCrew = null,
    Object? requireUnloadingCrew = null,
    Object? paymentState = null,
    Object? state = null,
    Object? stateChanged = null,
    Object? isInDispute = null,
    Object? pickUpCargoImagePath = freezed,
    Object? pickUpProofImagePath = freezed,
    Object? deliveryCargoImagePath = freezed,
    Object? deliveryProofImagePath = freezed,
    Object? costsSummary = null,
    Object? payments = freezed,
    Object? customer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      vehiculeTypeName: null == vehiculeTypeName
          ? _value.vehiculeTypeName
          : vehiculeTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      tittle: null == tittle
          ? _value.tittle
          : tittle // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      pickupDate: null == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      cargo: null == cargo
          ? _value.cargo
          : cargo // ignore: cast_nullable_to_non_nullable
              as Cargo,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Location,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Location,
      requireLoadingCrew: null == requireLoadingCrew
          ? _value.requireLoadingCrew
          : requireLoadingCrew // ignore: cast_nullable_to_non_nullable
              as bool,
      requireUnloadingCrew: null == requireUnloadingCrew
          ? _value.requireUnloadingCrew
          : requireUnloadingCrew // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentState: null == paymentState
          ? _value.paymentState
          : paymentState // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      stateChanged: null == stateChanged
          ? _value.stateChanged
          : stateChanged // ignore: cast_nullable_to_non_nullable
              as String,
      isInDispute: null == isInDispute
          ? _value.isInDispute
          : isInDispute // ignore: cast_nullable_to_non_nullable
              as bool,
      pickUpCargoImagePath: freezed == pickUpCargoImagePath
          ? _value.pickUpCargoImagePath
          : pickUpCargoImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      pickUpProofImagePath: freezed == pickUpProofImagePath
          ? _value.pickUpProofImagePath
          : pickUpProofImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryCargoImagePath: freezed == deliveryCargoImagePath
          ? _value.deliveryCargoImagePath
          : deliveryCargoImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryProofImagePath: freezed == deliveryProofImagePath
          ? _value.deliveryProofImagePath
          : deliveryProofImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      costsSummary: null == costsSummary
          ? _value.costsSummary
          : costsSummary // ignore: cast_nullable_to_non_nullable
              as CostsSummary,
      payments: freezed == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>?,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CargoCopyWith<$Res> get cargo {
    return $CargoCopyWith<$Res>(_value.cargo, (value) {
      return _then(_value.copyWith(cargo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get origin {
    return $LocationCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get destination {
    return $LocationCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CostsSummaryCopyWith<$Res> get costsSummary {
    return $CostsSummaryCopyWith<$Res>(_value.costsSummary, (value) {
      return _then(_value.copyWith(costsSummary: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ContractDetailsPropertiesCopyWith<$Res>
    implements $ContractDetailsPropertiesCopyWith<$Res> {
  factory _$$_ContractDetailsPropertiesCopyWith(
          _$_ContractDetailsProperties value,
          $Res Function(_$_ContractDetailsProperties) then) =
      __$$_ContractDetailsPropertiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String created,
      double rating,
      String vehiculeTypeName,
      String description,
      String tittle,
      int distance,
      String pickupDate,
      String deliveryDate,
      Cargo cargo,
      Location origin,
      Location destination,
      bool requireLoadingCrew,
      bool requireUnloadingCrew,
      String paymentState,
      String state,
      String stateChanged,
      bool isInDispute,
      String? pickUpCargoImagePath,
      String? pickUpProofImagePath,
      String? deliveryCargoImagePath,
      String? deliveryProofImagePath,
      CostsSummary costsSummary,
      List<Payment>? payments,
      Customer customer});

  @override
  $CargoCopyWith<$Res> get cargo;
  @override
  $LocationCopyWith<$Res> get origin;
  @override
  $LocationCopyWith<$Res> get destination;
  @override
  $CostsSummaryCopyWith<$Res> get costsSummary;
  @override
  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class __$$_ContractDetailsPropertiesCopyWithImpl<$Res>
    extends _$ContractDetailsPropertiesCopyWithImpl<$Res,
        _$_ContractDetailsProperties>
    implements _$$_ContractDetailsPropertiesCopyWith<$Res> {
  __$$_ContractDetailsPropertiesCopyWithImpl(
      _$_ContractDetailsProperties _value,
      $Res Function(_$_ContractDetailsProperties) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? rating = null,
    Object? vehiculeTypeName = null,
    Object? description = null,
    Object? tittle = null,
    Object? distance = null,
    Object? pickupDate = null,
    Object? deliveryDate = null,
    Object? cargo = null,
    Object? origin = null,
    Object? destination = null,
    Object? requireLoadingCrew = null,
    Object? requireUnloadingCrew = null,
    Object? paymentState = null,
    Object? state = null,
    Object? stateChanged = null,
    Object? isInDispute = null,
    Object? pickUpCargoImagePath = freezed,
    Object? pickUpProofImagePath = freezed,
    Object? deliveryCargoImagePath = freezed,
    Object? deliveryProofImagePath = freezed,
    Object? costsSummary = null,
    Object? payments = freezed,
    Object? customer = null,
  }) {
    return _then(_$_ContractDetailsProperties(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      vehiculeTypeName: null == vehiculeTypeName
          ? _value.vehiculeTypeName
          : vehiculeTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      tittle: null == tittle
          ? _value.tittle
          : tittle // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      pickupDate: null == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      cargo: null == cargo
          ? _value.cargo
          : cargo // ignore: cast_nullable_to_non_nullable
              as Cargo,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Location,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Location,
      requireLoadingCrew: null == requireLoadingCrew
          ? _value.requireLoadingCrew
          : requireLoadingCrew // ignore: cast_nullable_to_non_nullable
              as bool,
      requireUnloadingCrew: null == requireUnloadingCrew
          ? _value.requireUnloadingCrew
          : requireUnloadingCrew // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentState: null == paymentState
          ? _value.paymentState
          : paymentState // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      stateChanged: null == stateChanged
          ? _value.stateChanged
          : stateChanged // ignore: cast_nullable_to_non_nullable
              as String,
      isInDispute: null == isInDispute
          ? _value.isInDispute
          : isInDispute // ignore: cast_nullable_to_non_nullable
              as bool,
      pickUpCargoImagePath: freezed == pickUpCargoImagePath
          ? _value.pickUpCargoImagePath
          : pickUpCargoImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      pickUpProofImagePath: freezed == pickUpProofImagePath
          ? _value.pickUpProofImagePath
          : pickUpProofImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryCargoImagePath: freezed == deliveryCargoImagePath
          ? _value.deliveryCargoImagePath
          : deliveryCargoImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryProofImagePath: freezed == deliveryProofImagePath
          ? _value.deliveryProofImagePath
          : deliveryProofImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      costsSummary: null == costsSummary
          ? _value.costsSummary
          : costsSummary // ignore: cast_nullable_to_non_nullable
              as CostsSummary,
      payments: freezed == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>?,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContractDetailsProperties implements _ContractDetailsProperties {
  _$_ContractDetailsProperties(
      {required this.id,
      required this.created,
      this.rating = 5.0,
      required this.vehiculeTypeName,
      required this.description,
      required this.tittle,
      required this.distance,
      required this.pickupDate,
      required this.deliveryDate,
      required this.cargo,
      required this.origin,
      required this.destination,
      required this.requireLoadingCrew,
      required this.requireUnloadingCrew,
      required this.paymentState,
      required this.state,
      required this.stateChanged,
      required this.isInDispute,
      this.pickUpCargoImagePath,
      this.pickUpProofImagePath,
      this.deliveryCargoImagePath,
      this.deliveryProofImagePath,
      required this.costsSummary,
      final List<Payment>? payments,
      required this.customer})
      : _payments = payments;

  factory _$_ContractDetailsProperties.fromJson(Map<String, dynamic> json) =>
      _$$_ContractDetailsPropertiesFromJson(json);

  @override
  final String id;
  @override
  final String created;
  @override
  @JsonKey()
  final double rating;
  @override
  final String vehiculeTypeName;
  @override
  final String description;
  @override
  final String tittle;
  @override
  final int distance;
  @override
  final String pickupDate;
  @override
  final String deliveryDate;
  @override
  final Cargo cargo;
  @override
  final Location origin;
  @override
  final Location destination;
  @override
  final bool requireLoadingCrew;
  @override
  final bool requireUnloadingCrew;
  @override
  final String paymentState;
  @override
  final String state;
  @override
  final String stateChanged;
  @override
  final bool isInDispute;
  @override
  final String? pickUpCargoImagePath;
  @override
  final String? pickUpProofImagePath;
  @override
  final String? deliveryCargoImagePath;
  @override
  final String? deliveryProofImagePath;
  @override
  final CostsSummary costsSummary;
  final List<Payment>? _payments;
  @override
  List<Payment>? get payments {
    final value = _payments;
    if (value == null) return null;
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Customer customer;

  @override
  String toString() {
    return 'ContractDetailsProperties(id: $id, created: $created, rating: $rating, vehiculeTypeName: $vehiculeTypeName, description: $description, tittle: $tittle, distance: $distance, pickupDate: $pickupDate, deliveryDate: $deliveryDate, cargo: $cargo, origin: $origin, destination: $destination, requireLoadingCrew: $requireLoadingCrew, requireUnloadingCrew: $requireUnloadingCrew, paymentState: $paymentState, state: $state, stateChanged: $stateChanged, isInDispute: $isInDispute, pickUpCargoImagePath: $pickUpCargoImagePath, pickUpProofImagePath: $pickUpProofImagePath, deliveryCargoImagePath: $deliveryCargoImagePath, deliveryProofImagePath: $deliveryProofImagePath, costsSummary: $costsSummary, payments: $payments, customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContractDetailsProperties &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.vehiculeTypeName, vehiculeTypeName) ||
                other.vehiculeTypeName == vehiculeTypeName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.tittle, tittle) || other.tittle == tittle) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.pickupDate, pickupDate) ||
                other.pickupDate == pickupDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.cargo, cargo) || other.cargo == cargo) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.requireLoadingCrew, requireLoadingCrew) ||
                other.requireLoadingCrew == requireLoadingCrew) &&
            (identical(other.requireUnloadingCrew, requireUnloadingCrew) ||
                other.requireUnloadingCrew == requireUnloadingCrew) &&
            (identical(other.paymentState, paymentState) ||
                other.paymentState == paymentState) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.stateChanged, stateChanged) ||
                other.stateChanged == stateChanged) &&
            (identical(other.isInDispute, isInDispute) ||
                other.isInDispute == isInDispute) &&
            (identical(other.pickUpCargoImagePath, pickUpCargoImagePath) ||
                other.pickUpCargoImagePath == pickUpCargoImagePath) &&
            (identical(other.pickUpProofImagePath, pickUpProofImagePath) ||
                other.pickUpProofImagePath == pickUpProofImagePath) &&
            (identical(other.deliveryCargoImagePath, deliveryCargoImagePath) ||
                other.deliveryCargoImagePath == deliveryCargoImagePath) &&
            (identical(other.deliveryProofImagePath, deliveryProofImagePath) ||
                other.deliveryProofImagePath == deliveryProofImagePath) &&
            (identical(other.costsSummary, costsSummary) ||
                other.costsSummary == costsSummary) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        created,
        rating,
        vehiculeTypeName,
        description,
        tittle,
        distance,
        pickupDate,
        deliveryDate,
        cargo,
        origin,
        destination,
        requireLoadingCrew,
        requireUnloadingCrew,
        paymentState,
        state,
        stateChanged,
        isInDispute,
        pickUpCargoImagePath,
        pickUpProofImagePath,
        deliveryCargoImagePath,
        deliveryProofImagePath,
        costsSummary,
        const DeepCollectionEquality().hash(_payments),
        customer
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContractDetailsPropertiesCopyWith<_$_ContractDetailsProperties>
      get copyWith => __$$_ContractDetailsPropertiesCopyWithImpl<
          _$_ContractDetailsProperties>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContractDetailsPropertiesToJson(
      this,
    );
  }
}

abstract class _ContractDetailsProperties implements ContractDetailsProperties {
  factory _ContractDetailsProperties(
      {required final String id,
      required final String created,
      final double rating,
      required final String vehiculeTypeName,
      required final String description,
      required final String tittle,
      required final int distance,
      required final String pickupDate,
      required final String deliveryDate,
      required final Cargo cargo,
      required final Location origin,
      required final Location destination,
      required final bool requireLoadingCrew,
      required final bool requireUnloadingCrew,
      required final String paymentState,
      required final String state,
      required final String stateChanged,
      required final bool isInDispute,
      final String? pickUpCargoImagePath,
      final String? pickUpProofImagePath,
      final String? deliveryCargoImagePath,
      final String? deliveryProofImagePath,
      required final CostsSummary costsSummary,
      final List<Payment>? payments,
      required final Customer customer}) = _$_ContractDetailsProperties;

  factory _ContractDetailsProperties.fromJson(Map<String, dynamic> json) =
      _$_ContractDetailsProperties.fromJson;

  @override
  String get id;
  @override
  String get created;
  @override
  double get rating;
  @override
  String get vehiculeTypeName;
  @override
  String get description;
  @override
  String get tittle;
  @override
  int get distance;
  @override
  String get pickupDate;
  @override
  String get deliveryDate;
  @override
  Cargo get cargo;
  @override
  Location get origin;
  @override
  Location get destination;
  @override
  bool get requireLoadingCrew;
  @override
  bool get requireUnloadingCrew;
  @override
  String get paymentState;
  @override
  String get state;
  @override
  String get stateChanged;
  @override
  bool get isInDispute;
  @override
  String? get pickUpCargoImagePath;
  @override
  String? get pickUpProofImagePath;
  @override
  String? get deliveryCargoImagePath;
  @override
  String? get deliveryProofImagePath;
  @override
  CostsSummary get costsSummary;
  @override
  List<Payment>? get payments;
  @override
  Customer get customer;
  @override
  @JsonKey(ignore: true)
  _$$_ContractDetailsPropertiesCopyWith<_$_ContractDetailsProperties>
      get copyWith => throw _privateConstructorUsedError;
}

ContractDetailsResponse _$ContractDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _ContractDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$ContractDetailsResponse {
  ContractDetailsProperties get contract => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractDetailsResponseCopyWith<ContractDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractDetailsResponseCopyWith<$Res> {
  factory $ContractDetailsResponseCopyWith(ContractDetailsResponse value,
          $Res Function(ContractDetailsResponse) then) =
      _$ContractDetailsResponseCopyWithImpl<$Res, ContractDetailsResponse>;
  @useResult
  $Res call({ContractDetailsProperties contract});

  $ContractDetailsPropertiesCopyWith<$Res> get contract;
}

/// @nodoc
class _$ContractDetailsResponseCopyWithImpl<$Res,
        $Val extends ContractDetailsResponse>
    implements $ContractDetailsResponseCopyWith<$Res> {
  _$ContractDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contract = null,
  }) {
    return _then(_value.copyWith(
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as ContractDetailsProperties,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractDetailsPropertiesCopyWith<$Res> get contract {
    return $ContractDetailsPropertiesCopyWith<$Res>(_value.contract, (value) {
      return _then(_value.copyWith(contract: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ContractDetailsResponseCopyWith<$Res>
    implements $ContractDetailsResponseCopyWith<$Res> {
  factory _$$_ContractDetailsResponseCopyWith(_$_ContractDetailsResponse value,
          $Res Function(_$_ContractDetailsResponse) then) =
      __$$_ContractDetailsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContractDetailsProperties contract});

  @override
  $ContractDetailsPropertiesCopyWith<$Res> get contract;
}

/// @nodoc
class __$$_ContractDetailsResponseCopyWithImpl<$Res>
    extends _$ContractDetailsResponseCopyWithImpl<$Res,
        _$_ContractDetailsResponse>
    implements _$$_ContractDetailsResponseCopyWith<$Res> {
  __$$_ContractDetailsResponseCopyWithImpl(_$_ContractDetailsResponse _value,
      $Res Function(_$_ContractDetailsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contract = null,
  }) {
    return _then(_$_ContractDetailsResponse(
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as ContractDetailsProperties,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContractDetailsResponse implements _ContractDetailsResponse {
  const _$_ContractDetailsResponse({required this.contract});

  factory _$_ContractDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ContractDetailsResponseFromJson(json);

  @override
  final ContractDetailsProperties contract;

  @override
  String toString() {
    return 'ContractDetailsResponse(contract: $contract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContractDetailsResponse &&
            (identical(other.contract, contract) ||
                other.contract == contract));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contract);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContractDetailsResponseCopyWith<_$_ContractDetailsResponse>
      get copyWith =>
          __$$_ContractDetailsResponseCopyWithImpl<_$_ContractDetailsResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContractDetailsResponseToJson(
      this,
    );
  }
}

abstract class _ContractDetailsResponse implements ContractDetailsResponse {
  const factory _ContractDetailsResponse(
          {required final ContractDetailsProperties contract}) =
      _$_ContractDetailsResponse;

  factory _ContractDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_ContractDetailsResponse.fromJson;

  @override
  ContractDetailsProperties get contract;
  @override
  @JsonKey(ignore: true)
  _$$_ContractDetailsResponseCopyWith<_$_ContractDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
