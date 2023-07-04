// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobDetailsResponse _$JobDetailsResponseFromJson(Map<String, dynamic> json) {
  return _JobDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$JobDetailsResponse {
  JobDetailsProperties get job => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobDetailsResponseCopyWith<JobDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobDetailsResponseCopyWith<$Res> {
  factory $JobDetailsResponseCopyWith(
          JobDetailsResponse value, $Res Function(JobDetailsResponse) then) =
      _$JobDetailsResponseCopyWithImpl<$Res, JobDetailsResponse>;
  @useResult
  $Res call({JobDetailsProperties job});

  $JobDetailsPropertiesCopyWith<$Res> get job;
}

/// @nodoc
class _$JobDetailsResponseCopyWithImpl<$Res, $Val extends JobDetailsResponse>
    implements $JobDetailsResponseCopyWith<$Res> {
  _$JobDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? job = null,
  }) {
    return _then(_value.copyWith(
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as JobDetailsProperties,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JobDetailsPropertiesCopyWith<$Res> get job {
    return $JobDetailsPropertiesCopyWith<$Res>(_value.job, (value) {
      return _then(_value.copyWith(job: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JobDetailsResponseCopyWith<$Res>
    implements $JobDetailsResponseCopyWith<$Res> {
  factory _$$_JobDetailsResponseCopyWith(_$_JobDetailsResponse value,
          $Res Function(_$_JobDetailsResponse) then) =
      __$$_JobDetailsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({JobDetailsProperties job});

  @override
  $JobDetailsPropertiesCopyWith<$Res> get job;
}

/// @nodoc
class __$$_JobDetailsResponseCopyWithImpl<$Res>
    extends _$JobDetailsResponseCopyWithImpl<$Res, _$_JobDetailsResponse>
    implements _$$_JobDetailsResponseCopyWith<$Res> {
  __$$_JobDetailsResponseCopyWithImpl(
      _$_JobDetailsResponse _value, $Res Function(_$_JobDetailsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? job = null,
  }) {
    return _then(_$_JobDetailsResponse(
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as JobDetailsProperties,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobDetailsResponse implements _JobDetailsResponse {
  const _$_JobDetailsResponse({required this.job});

  factory _$_JobDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_JobDetailsResponseFromJson(json);

  @override
  final JobDetailsProperties job;

  @override
  String toString() {
    return 'JobDetailsResponse(job: $job)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobDetailsResponse &&
            (identical(other.job, job) || other.job == job));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, job);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobDetailsResponseCopyWith<_$_JobDetailsResponse> get copyWith =>
      __$$_JobDetailsResponseCopyWithImpl<_$_JobDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobDetailsResponseToJson(
      this,
    );
  }
}

abstract class _JobDetailsResponse implements JobDetailsResponse {
  const factory _JobDetailsResponse({required final JobDetailsProperties job}) =
      _$_JobDetailsResponse;

  factory _JobDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_JobDetailsResponse.fromJson;

  @override
  JobDetailsProperties get job;
  @override
  @JsonKey(ignore: true)
  _$$_JobDetailsResponseCopyWith<_$_JobDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

JobDetailsProperties _$JobDetailsPropertiesFromJson(Map<String, dynamic> json) {
  return _JobDetailsProperties.fromJson(json);
}

/// @nodoc
mixin _$JobDetailsProperties {
  String get id => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  String get vehiculeTypeName => throw _privateConstructorUsedError;
  bool get requireLoadingCrew => throw _privateConstructorUsedError;
  bool get requireUnloadingCrew => throw _privateConstructorUsedError;
  bool get prpoposalAlreadyAdded => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get tittle => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;
  double get pricePerKm => throw _privateConstructorUsedError;
  String get pickupDate => throw _privateConstructorUsedError;
  String get deliveryDate => throw _privateConstructorUsedError;
  Cargo get cargo => throw _privateConstructorUsedError;
  Location get origin => throw _privateConstructorUsedError;
  Location get destination => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobDetailsPropertiesCopyWith<JobDetailsProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobDetailsPropertiesCopyWith<$Res> {
  factory $JobDetailsPropertiesCopyWith(JobDetailsProperties value,
          $Res Function(JobDetailsProperties) then) =
      _$JobDetailsPropertiesCopyWithImpl<$Res, JobDetailsProperties>;
  @useResult
  $Res call(
      {String id,
      String created,
      String vehiculeTypeName,
      bool requireLoadingCrew,
      bool requireUnloadingCrew,
      bool prpoposalAlreadyAdded,
      String description,
      String tittle,
      int distance,
      double pricePerKm,
      String pickupDate,
      String deliveryDate,
      Cargo cargo,
      Location origin,
      Location destination,
      Customer customer,
      String state});

  $CargoCopyWith<$Res> get cargo;
  $LocationCopyWith<$Res> get origin;
  $LocationCopyWith<$Res> get destination;
  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class _$JobDetailsPropertiesCopyWithImpl<$Res,
        $Val extends JobDetailsProperties>
    implements $JobDetailsPropertiesCopyWith<$Res> {
  _$JobDetailsPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? vehiculeTypeName = null,
    Object? requireLoadingCrew = null,
    Object? requireUnloadingCrew = null,
    Object? prpoposalAlreadyAdded = null,
    Object? description = null,
    Object? tittle = null,
    Object? distance = null,
    Object? pricePerKm = null,
    Object? pickupDate = null,
    Object? deliveryDate = null,
    Object? cargo = null,
    Object? origin = null,
    Object? destination = null,
    Object? customer = null,
    Object? state = null,
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
      prpoposalAlreadyAdded: null == prpoposalAlreadyAdded
          ? _value.prpoposalAlreadyAdded
          : prpoposalAlreadyAdded // ignore: cast_nullable_to_non_nullable
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
      pricePerKm: null == pricePerKm
          ? _value.pricePerKm
          : pricePerKm // ignore: cast_nullable_to_non_nullable
              as double,
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
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
abstract class _$$_JobDetailsPropertiesCopyWith<$Res>
    implements $JobDetailsPropertiesCopyWith<$Res> {
  factory _$$_JobDetailsPropertiesCopyWith(_$_JobDetailsProperties value,
          $Res Function(_$_JobDetailsProperties) then) =
      __$$_JobDetailsPropertiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String created,
      String vehiculeTypeName,
      bool requireLoadingCrew,
      bool requireUnloadingCrew,
      bool prpoposalAlreadyAdded,
      String description,
      String tittle,
      int distance,
      double pricePerKm,
      String pickupDate,
      String deliveryDate,
      Cargo cargo,
      Location origin,
      Location destination,
      Customer customer,
      String state});

  @override
  $CargoCopyWith<$Res> get cargo;
  @override
  $LocationCopyWith<$Res> get origin;
  @override
  $LocationCopyWith<$Res> get destination;
  @override
  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class __$$_JobDetailsPropertiesCopyWithImpl<$Res>
    extends _$JobDetailsPropertiesCopyWithImpl<$Res, _$_JobDetailsProperties>
    implements _$$_JobDetailsPropertiesCopyWith<$Res> {
  __$$_JobDetailsPropertiesCopyWithImpl(_$_JobDetailsProperties _value,
      $Res Function(_$_JobDetailsProperties) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? vehiculeTypeName = null,
    Object? requireLoadingCrew = null,
    Object? requireUnloadingCrew = null,
    Object? prpoposalAlreadyAdded = null,
    Object? description = null,
    Object? tittle = null,
    Object? distance = null,
    Object? pricePerKm = null,
    Object? pickupDate = null,
    Object? deliveryDate = null,
    Object? cargo = null,
    Object? origin = null,
    Object? destination = null,
    Object? customer = null,
    Object? state = null,
  }) {
    return _then(_$_JobDetailsProperties(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
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
      prpoposalAlreadyAdded: null == prpoposalAlreadyAdded
          ? _value.prpoposalAlreadyAdded
          : prpoposalAlreadyAdded // ignore: cast_nullable_to_non_nullable
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
      pricePerKm: null == pricePerKm
          ? _value.pricePerKm
          : pricePerKm // ignore: cast_nullable_to_non_nullable
              as double,
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
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobDetailsProperties implements _JobDetailsProperties {
  _$_JobDetailsProperties(
      {required this.id,
      required this.created,
      required this.vehiculeTypeName,
      required this.requireLoadingCrew,
      required this.requireUnloadingCrew,
      required this.prpoposalAlreadyAdded,
      required this.description,
      required this.tittle,
      required this.distance,
      required this.pricePerKm,
      required this.pickupDate,
      required this.deliveryDate,
      required this.cargo,
      required this.origin,
      required this.destination,
      required this.customer,
      required this.state});

  factory _$_JobDetailsProperties.fromJson(Map<String, dynamic> json) =>
      _$$_JobDetailsPropertiesFromJson(json);

  @override
  final String id;
  @override
  final String created;
  @override
  final String vehiculeTypeName;
  @override
  final bool requireLoadingCrew;
  @override
  final bool requireUnloadingCrew;
  @override
  final bool prpoposalAlreadyAdded;
  @override
  final String description;
  @override
  final String tittle;
  @override
  final int distance;
  @override
  final double pricePerKm;
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
  final String state;

  @override
  String toString() {
    return 'JobDetailsProperties(id: $id, created: $created, vehiculeTypeName: $vehiculeTypeName, requireLoadingCrew: $requireLoadingCrew, requireUnloadingCrew: $requireUnloadingCrew, prpoposalAlreadyAdded: $prpoposalAlreadyAdded, description: $description, tittle: $tittle, distance: $distance, pricePerKm: $pricePerKm, pickupDate: $pickupDate, deliveryDate: $deliveryDate, cargo: $cargo, origin: $origin, destination: $destination, customer: $customer, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobDetailsProperties &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.vehiculeTypeName, vehiculeTypeName) ||
                other.vehiculeTypeName == vehiculeTypeName) &&
            (identical(other.requireLoadingCrew, requireLoadingCrew) ||
                other.requireLoadingCrew == requireLoadingCrew) &&
            (identical(other.requireUnloadingCrew, requireUnloadingCrew) ||
                other.requireUnloadingCrew == requireUnloadingCrew) &&
            (identical(other.prpoposalAlreadyAdded, prpoposalAlreadyAdded) ||
                other.prpoposalAlreadyAdded == prpoposalAlreadyAdded) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.tittle, tittle) || other.tittle == tittle) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.pricePerKm, pricePerKm) ||
                other.pricePerKm == pricePerKm) &&
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
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created,
      vehiculeTypeName,
      requireLoadingCrew,
      requireUnloadingCrew,
      prpoposalAlreadyAdded,
      description,
      tittle,
      distance,
      pricePerKm,
      pickupDate,
      deliveryDate,
      cargo,
      origin,
      destination,
      customer,
      state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobDetailsPropertiesCopyWith<_$_JobDetailsProperties> get copyWith =>
      __$$_JobDetailsPropertiesCopyWithImpl<_$_JobDetailsProperties>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobDetailsPropertiesToJson(
      this,
    );
  }
}

abstract class _JobDetailsProperties implements JobDetailsProperties {
  factory _JobDetailsProperties(
      {required final String id,
      required final String created,
      required final String vehiculeTypeName,
      required final bool requireLoadingCrew,
      required final bool requireUnloadingCrew,
      required final bool prpoposalAlreadyAdded,
      required final String description,
      required final String tittle,
      required final int distance,
      required final double pricePerKm,
      required final String pickupDate,
      required final String deliveryDate,
      required final Cargo cargo,
      required final Location origin,
      required final Location destination,
      required final Customer customer,
      required final String state}) = _$_JobDetailsProperties;

  factory _JobDetailsProperties.fromJson(Map<String, dynamic> json) =
      _$_JobDetailsProperties.fromJson;

  @override
  String get id;
  @override
  String get created;
  @override
  String get vehiculeTypeName;
  @override
  bool get requireLoadingCrew;
  @override
  bool get requireUnloadingCrew;
  @override
  bool get prpoposalAlreadyAdded;
  @override
  String get description;
  @override
  String get tittle;
  @override
  int get distance;
  @override
  double get pricePerKm;
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
  String get state;
  @override
  @JsonKey(ignore: true)
  _$$_JobDetailsPropertiesCopyWith<_$_JobDetailsProperties> get copyWith =>
      throw _privateConstructorUsedError;
}
