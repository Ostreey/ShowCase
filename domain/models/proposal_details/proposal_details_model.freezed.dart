// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proposal_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProposalDetailsProperties _$ProposalDetailsPropertiesFromJson(
    Map<String, dynamic> json) {
  return _ProposalDetailsProperties.fromJson(json);
}

/// @nodoc
mixin _$ProposalDetailsProperties {
  String get id => throw _privateConstructorUsedError;
  String get proposalCreated => throw _privateConstructorUsedError;
  String get jobCreated => throw _privateConstructorUsedError;
  String get vehiculeTypeName => throw _privateConstructorUsedError;
  bool get requireLoadingCrew => throw _privateConstructorUsedError;
  bool get requireUnloadingCrew => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get tittle => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;
  double get jobsPricePerKm => throw _privateConstructorUsedError;
  double get driversPricePerKm => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get pickupDate => throw _privateConstructorUsedError;
  String get deliveryDate => throw _privateConstructorUsedError;
  Cargo get cargo => throw _privateConstructorUsedError;
  Location get origin => throw _privateConstructorUsedError;
  Location get destination => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;
  CostsSummary get costsSummary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProposalDetailsPropertiesCopyWith<ProposalDetailsProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalDetailsPropertiesCopyWith<$Res> {
  factory $ProposalDetailsPropertiesCopyWith(ProposalDetailsProperties value,
          $Res Function(ProposalDetailsProperties) then) =
      _$ProposalDetailsPropertiesCopyWithImpl<$Res, ProposalDetailsProperties>;
  @useResult
  $Res call(
      {String id,
      String proposalCreated,
      String jobCreated,
      String vehiculeTypeName,
      bool requireLoadingCrew,
      bool requireUnloadingCrew,
      String description,
      String tittle,
      int distance,
      double jobsPricePerKm,
      double driversPricePerKm,
      String state,
      String pickupDate,
      String deliveryDate,
      Cargo cargo,
      Location origin,
      Location destination,
      Customer customer,
      CostsSummary costsSummary});

  $CargoCopyWith<$Res> get cargo;
  $LocationCopyWith<$Res> get origin;
  $LocationCopyWith<$Res> get destination;
  $CustomerCopyWith<$Res> get customer;
  $CostsSummaryCopyWith<$Res> get costsSummary;
}

/// @nodoc
class _$ProposalDetailsPropertiesCopyWithImpl<$Res,
        $Val extends ProposalDetailsProperties>
    implements $ProposalDetailsPropertiesCopyWith<$Res> {
  _$ProposalDetailsPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? proposalCreated = null,
    Object? jobCreated = null,
    Object? vehiculeTypeName = null,
    Object? requireLoadingCrew = null,
    Object? requireUnloadingCrew = null,
    Object? description = null,
    Object? tittle = null,
    Object? distance = null,
    Object? jobsPricePerKm = null,
    Object? driversPricePerKm = null,
    Object? state = null,
    Object? pickupDate = null,
    Object? deliveryDate = null,
    Object? cargo = null,
    Object? origin = null,
    Object? destination = null,
    Object? customer = null,
    Object? costsSummary = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      proposalCreated: null == proposalCreated
          ? _value.proposalCreated
          : proposalCreated // ignore: cast_nullable_to_non_nullable
              as String,
      jobCreated: null == jobCreated
          ? _value.jobCreated
          : jobCreated // ignore: cast_nullable_to_non_nullable
              as String,
      vehiculeTypeName: null == vehiculeTypeName
          ? _value.vehiculeTypeName
          : vehiculeTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      requireLoadingCrew: null == requireLoadingCrew
          ? _value.requireLoadingCrew
          : requireLoadingCrew // ignore: cast_nullable_to_non_nullable
              as bool,
      requireUnloadingCrew: null == requireUnloadingCrew
          ? _value.requireUnloadingCrew
          : requireUnloadingCrew // ignore: cast_nullable_to_non_nullable
              as bool,
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
      jobsPricePerKm: null == jobsPricePerKm
          ? _value.jobsPricePerKm
          : jobsPricePerKm // ignore: cast_nullable_to_non_nullable
              as double,
      driversPricePerKm: null == driversPricePerKm
          ? _value.driversPricePerKm
          : driversPricePerKm // ignore: cast_nullable_to_non_nullable
              as double,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
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
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      costsSummary: null == costsSummary
          ? _value.costsSummary
          : costsSummary // ignore: cast_nullable_to_non_nullable
              as CostsSummary,
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
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CostsSummaryCopyWith<$Res> get costsSummary {
    return $CostsSummaryCopyWith<$Res>(_value.costsSummary, (value) {
      return _then(_value.copyWith(costsSummary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProposalDetailsPropertiesCopyWith<$Res>
    implements $ProposalDetailsPropertiesCopyWith<$Res> {
  factory _$$_ProposalDetailsPropertiesCopyWith(
          _$_ProposalDetailsProperties value,
          $Res Function(_$_ProposalDetailsProperties) then) =
      __$$_ProposalDetailsPropertiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String proposalCreated,
      String jobCreated,
      String vehiculeTypeName,
      bool requireLoadingCrew,
      bool requireUnloadingCrew,
      String description,
      String tittle,
      int distance,
      double jobsPricePerKm,
      double driversPricePerKm,
      String state,
      String pickupDate,
      String deliveryDate,
      Cargo cargo,
      Location origin,
      Location destination,
      Customer customer,
      CostsSummary costsSummary});

  @override
  $CargoCopyWith<$Res> get cargo;
  @override
  $LocationCopyWith<$Res> get origin;
  @override
  $LocationCopyWith<$Res> get destination;
  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $CostsSummaryCopyWith<$Res> get costsSummary;
}

/// @nodoc
class __$$_ProposalDetailsPropertiesCopyWithImpl<$Res>
    extends _$ProposalDetailsPropertiesCopyWithImpl<$Res,
        _$_ProposalDetailsProperties>
    implements _$$_ProposalDetailsPropertiesCopyWith<$Res> {
  __$$_ProposalDetailsPropertiesCopyWithImpl(
      _$_ProposalDetailsProperties _value,
      $Res Function(_$_ProposalDetailsProperties) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? proposalCreated = null,
    Object? jobCreated = null,
    Object? vehiculeTypeName = null,
    Object? requireLoadingCrew = null,
    Object? requireUnloadingCrew = null,
    Object? description = null,
    Object? tittle = null,
    Object? distance = null,
    Object? jobsPricePerKm = null,
    Object? driversPricePerKm = null,
    Object? state = null,
    Object? pickupDate = null,
    Object? deliveryDate = null,
    Object? cargo = null,
    Object? origin = null,
    Object? destination = null,
    Object? customer = null,
    Object? costsSummary = null,
  }) {
    return _then(_$_ProposalDetailsProperties(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      proposalCreated: null == proposalCreated
          ? _value.proposalCreated
          : proposalCreated // ignore: cast_nullable_to_non_nullable
              as String,
      jobCreated: null == jobCreated
          ? _value.jobCreated
          : jobCreated // ignore: cast_nullable_to_non_nullable
              as String,
      vehiculeTypeName: null == vehiculeTypeName
          ? _value.vehiculeTypeName
          : vehiculeTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      requireLoadingCrew: null == requireLoadingCrew
          ? _value.requireLoadingCrew
          : requireLoadingCrew // ignore: cast_nullable_to_non_nullable
              as bool,
      requireUnloadingCrew: null == requireUnloadingCrew
          ? _value.requireUnloadingCrew
          : requireUnloadingCrew // ignore: cast_nullable_to_non_nullable
              as bool,
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
      jobsPricePerKm: null == jobsPricePerKm
          ? _value.jobsPricePerKm
          : jobsPricePerKm // ignore: cast_nullable_to_non_nullable
              as double,
      driversPricePerKm: null == driversPricePerKm
          ? _value.driversPricePerKm
          : driversPricePerKm // ignore: cast_nullable_to_non_nullable
              as double,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
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
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      costsSummary: null == costsSummary
          ? _value.costsSummary
          : costsSummary // ignore: cast_nullable_to_non_nullable
              as CostsSummary,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProposalDetailsProperties implements _ProposalDetailsProperties {
  const _$_ProposalDetailsProperties(
      {required this.id,
      required this.proposalCreated,
      required this.jobCreated,
      required this.vehiculeTypeName,
      required this.requireLoadingCrew,
      required this.requireUnloadingCrew,
      required this.description,
      required this.tittle,
      required this.distance,
      required this.jobsPricePerKm,
      required this.driversPricePerKm,
      required this.state,
      required this.pickupDate,
      required this.deliveryDate,
      required this.cargo,
      required this.origin,
      required this.destination,
      required this.customer,
      required this.costsSummary});

  factory _$_ProposalDetailsProperties.fromJson(Map<String, dynamic> json) =>
      _$$_ProposalDetailsPropertiesFromJson(json);

  @override
  final String id;
  @override
  final String proposalCreated;
  @override
  final String jobCreated;
  @override
  final String vehiculeTypeName;
  @override
  final bool requireLoadingCrew;
  @override
  final bool requireUnloadingCrew;
  @override
  final String description;
  @override
  final String tittle;
  @override
  final int distance;
  @override
  final double jobsPricePerKm;
  @override
  final double driversPricePerKm;
  @override
  final String state;
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
  final Customer customer;
  @override
  final CostsSummary costsSummary;

  @override
  String toString() {
    return 'ProposalDetailsProperties(id: $id, proposalCreated: $proposalCreated, jobCreated: $jobCreated, vehiculeTypeName: $vehiculeTypeName, requireLoadingCrew: $requireLoadingCrew, requireUnloadingCrew: $requireUnloadingCrew, description: $description, tittle: $tittle, distance: $distance, jobsPricePerKm: $jobsPricePerKm, driversPricePerKm: $driversPricePerKm, state: $state, pickupDate: $pickupDate, deliveryDate: $deliveryDate, cargo: $cargo, origin: $origin, destination: $destination, customer: $customer, costsSummary: $costsSummary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProposalDetailsProperties &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.proposalCreated, proposalCreated) ||
                other.proposalCreated == proposalCreated) &&
            (identical(other.jobCreated, jobCreated) ||
                other.jobCreated == jobCreated) &&
            (identical(other.vehiculeTypeName, vehiculeTypeName) ||
                other.vehiculeTypeName == vehiculeTypeName) &&
            (identical(other.requireLoadingCrew, requireLoadingCrew) ||
                other.requireLoadingCrew == requireLoadingCrew) &&
            (identical(other.requireUnloadingCrew, requireUnloadingCrew) ||
                other.requireUnloadingCrew == requireUnloadingCrew) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.tittle, tittle) || other.tittle == tittle) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.jobsPricePerKm, jobsPricePerKm) ||
                other.jobsPricePerKm == jobsPricePerKm) &&
            (identical(other.driversPricePerKm, driversPricePerKm) ||
                other.driversPricePerKm == driversPricePerKm) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pickupDate, pickupDate) ||
                other.pickupDate == pickupDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.cargo, cargo) || other.cargo == cargo) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.costsSummary, costsSummary) ||
                other.costsSummary == costsSummary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        proposalCreated,
        jobCreated,
        vehiculeTypeName,
        requireLoadingCrew,
        requireUnloadingCrew,
        description,
        tittle,
        distance,
        jobsPricePerKm,
        driversPricePerKm,
        state,
        pickupDate,
        deliveryDate,
        cargo,
        origin,
        destination,
        customer,
        costsSummary
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProposalDetailsPropertiesCopyWith<_$_ProposalDetailsProperties>
      get copyWith => __$$_ProposalDetailsPropertiesCopyWithImpl<
          _$_ProposalDetailsProperties>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProposalDetailsPropertiesToJson(
      this,
    );
  }
}

abstract class _ProposalDetailsProperties implements ProposalDetailsProperties {
  const factory _ProposalDetailsProperties(
      {required final String id,
      required final String proposalCreated,
      required final String jobCreated,
      required final String vehiculeTypeName,
      required final bool requireLoadingCrew,
      required final bool requireUnloadingCrew,
      required final String description,
      required final String tittle,
      required final int distance,
      required final double jobsPricePerKm,
      required final double driversPricePerKm,
      required final String state,
      required final String pickupDate,
      required final String deliveryDate,
      required final Cargo cargo,
      required final Location origin,
      required final Location destination,
      required final Customer customer,
      required final CostsSummary costsSummary}) = _$_ProposalDetailsProperties;

  factory _ProposalDetailsProperties.fromJson(Map<String, dynamic> json) =
      _$_ProposalDetailsProperties.fromJson;

  @override
  String get id;
  @override
  String get proposalCreated;
  @override
  String get jobCreated;
  @override
  String get vehiculeTypeName;
  @override
  bool get requireLoadingCrew;
  @override
  bool get requireUnloadingCrew;
  @override
  String get description;
  @override
  String get tittle;
  @override
  int get distance;
  @override
  double get jobsPricePerKm;
  @override
  double get driversPricePerKm;
  @override
  String get state;
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
  Customer get customer;
  @override
  CostsSummary get costsSummary;
  @override
  @JsonKey(ignore: true)
  _$$_ProposalDetailsPropertiesCopyWith<_$_ProposalDetailsProperties>
      get copyWith => throw _privateConstructorUsedError;
}

ProposalDetailsResponse _$ProposalDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _ProposalDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$ProposalDetailsResponse {
  ProposalDetailsProperties get proposal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProposalDetailsResponseCopyWith<ProposalDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalDetailsResponseCopyWith<$Res> {
  factory $ProposalDetailsResponseCopyWith(ProposalDetailsResponse value,
          $Res Function(ProposalDetailsResponse) then) =
      _$ProposalDetailsResponseCopyWithImpl<$Res, ProposalDetailsResponse>;
  @useResult
  $Res call({ProposalDetailsProperties proposal});

  $ProposalDetailsPropertiesCopyWith<$Res> get proposal;
}

/// @nodoc
class _$ProposalDetailsResponseCopyWithImpl<$Res,
        $Val extends ProposalDetailsResponse>
    implements $ProposalDetailsResponseCopyWith<$Res> {
  _$ProposalDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proposal = null,
  }) {
    return _then(_value.copyWith(
      proposal: null == proposal
          ? _value.proposal
          : proposal // ignore: cast_nullable_to_non_nullable
              as ProposalDetailsProperties,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProposalDetailsPropertiesCopyWith<$Res> get proposal {
    return $ProposalDetailsPropertiesCopyWith<$Res>(_value.proposal, (value) {
      return _then(_value.copyWith(proposal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProposalDetailsResponseCopyWith<$Res>
    implements $ProposalDetailsResponseCopyWith<$Res> {
  factory _$$_ProposalDetailsResponseCopyWith(_$_ProposalDetailsResponse value,
          $Res Function(_$_ProposalDetailsResponse) then) =
      __$$_ProposalDetailsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProposalDetailsProperties proposal});

  @override
  $ProposalDetailsPropertiesCopyWith<$Res> get proposal;
}

/// @nodoc
class __$$_ProposalDetailsResponseCopyWithImpl<$Res>
    extends _$ProposalDetailsResponseCopyWithImpl<$Res,
        _$_ProposalDetailsResponse>
    implements _$$_ProposalDetailsResponseCopyWith<$Res> {
  __$$_ProposalDetailsResponseCopyWithImpl(_$_ProposalDetailsResponse _value,
      $Res Function(_$_ProposalDetailsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proposal = null,
  }) {
    return _then(_$_ProposalDetailsResponse(
      proposal: null == proposal
          ? _value.proposal
          : proposal // ignore: cast_nullable_to_non_nullable
              as ProposalDetailsProperties,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProposalDetailsResponse implements _ProposalDetailsResponse {
  const _$_ProposalDetailsResponse({required this.proposal});

  factory _$_ProposalDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProposalDetailsResponseFromJson(json);

  @override
  final ProposalDetailsProperties proposal;

  @override
  String toString() {
    return 'ProposalDetailsResponse(proposal: $proposal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProposalDetailsResponse &&
            (identical(other.proposal, proposal) ||
                other.proposal == proposal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, proposal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProposalDetailsResponseCopyWith<_$_ProposalDetailsResponse>
      get copyWith =>
          __$$_ProposalDetailsResponseCopyWithImpl<_$_ProposalDetailsResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProposalDetailsResponseToJson(
      this,
    );
  }
}

abstract class _ProposalDetailsResponse implements ProposalDetailsResponse {
  const factory _ProposalDetailsResponse(
          {required final ProposalDetailsProperties proposal}) =
      _$_ProposalDetailsResponse;

  factory _ProposalDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_ProposalDetailsResponse.fromJson;

  @override
  ProposalDetailsProperties get proposal;
  @override
  @JsonKey(ignore: true)
  _$$_ProposalDetailsResponseCopyWith<_$_ProposalDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
