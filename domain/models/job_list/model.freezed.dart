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

JobListResponse _$JobListResponseFromJson(Map<String, dynamic> json) {
  return _JobListResponse.fromJson(json);
}

/// @nodoc
mixin _$JobListResponse {
  List<JobListProperties> get data => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobListResponseCopyWith<JobListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobListResponseCopyWith<$Res> {
  factory $JobListResponseCopyWith(
          JobListResponse value, $Res Function(JobListResponse) then) =
      _$JobListResponseCopyWithImpl<$Res, JobListResponse>;
  @useResult
  $Res call(
      {List<JobListProperties> data,
      int totalCount,
      int pages,
      int pageSize,
      int currentPage});
}

/// @nodoc
class _$JobListResponseCopyWithImpl<$Res, $Val extends JobListResponse>
    implements $JobListResponseCopyWith<$Res> {
  _$JobListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? totalCount = null,
    Object? pages = null,
    Object? pageSize = null,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JobListProperties>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JobListResponseCopyWith<$Res>
    implements $JobListResponseCopyWith<$Res> {
  factory _$$_JobListResponseCopyWith(
          _$_JobListResponse value, $Res Function(_$_JobListResponse) then) =
      __$$_JobListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<JobListProperties> data,
      int totalCount,
      int pages,
      int pageSize,
      int currentPage});
}

/// @nodoc
class __$$_JobListResponseCopyWithImpl<$Res>
    extends _$JobListResponseCopyWithImpl<$Res, _$_JobListResponse>
    implements _$$_JobListResponseCopyWith<$Res> {
  __$$_JobListResponseCopyWithImpl(
      _$_JobListResponse _value, $Res Function(_$_JobListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? totalCount = null,
    Object? pages = null,
    Object? pageSize = null,
    Object? currentPage = null,
  }) {
    return _then(_$_JobListResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JobListProperties>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobListResponse implements _JobListResponse {
  const _$_JobListResponse(
      {required final List<JobListProperties> data,
      required this.totalCount,
      required this.pages,
      required this.pageSize,
      required this.currentPage})
      : _data = data;

  factory _$_JobListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_JobListResponseFromJson(json);

  final List<JobListProperties> _data;
  @override
  List<JobListProperties> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int totalCount;
  @override
  final int pages;
  @override
  final int pageSize;
  @override
  final int currentPage;

  @override
  String toString() {
    return 'JobListResponse(data: $data, totalCount: $totalCount, pages: $pages, pageSize: $pageSize, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobListResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      totalCount,
      pages,
      pageSize,
      currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobListResponseCopyWith<_$_JobListResponse> get copyWith =>
      __$$_JobListResponseCopyWithImpl<_$_JobListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobListResponseToJson(
      this,
    );
  }
}

abstract class _JobListResponse implements JobListResponse {
  const factory _JobListResponse(
      {required final List<JobListProperties> data,
      required final int totalCount,
      required final int pages,
      required final int pageSize,
      required final int currentPage}) = _$_JobListResponse;

  factory _JobListResponse.fromJson(Map<String, dynamic> json) =
      _$_JobListResponse.fromJson;

  @override
  List<JobListProperties> get data;
  @override
  int get totalCount;
  @override
  int get pages;
  @override
  int get pageSize;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$_JobListResponseCopyWith<_$_JobListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

JobListProperties _$JobListPropertiesFromJson(Map<String, dynamic> json) {
  return _JobListProperties.fromJson(json);
}

/// @nodoc
mixin _$JobListProperties {
  String get id => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  String get tittle => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get vehiculeTypeName => throw _privateConstructorUsedError;
  double get pricePerKm => throw _privateConstructorUsedError;
  String get pickupDate => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  bool get prpoposalAlreadyAdded => throw _privateConstructorUsedError;
  bool get addedToFavorite => throw _privateConstructorUsedError;
  Location get origin => throw _privateConstructorUsedError;
  Location get destination => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobListPropertiesCopyWith<JobListProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobListPropertiesCopyWith<$Res> {
  factory $JobListPropertiesCopyWith(
          JobListProperties value, $Res Function(JobListProperties) then) =
      _$JobListPropertiesCopyWithImpl<$Res, JobListProperties>;
  @useResult
  $Res call(
      {String id,
      String created,
      String tittle,
      String state,
      String vehiculeTypeName,
      double pricePerKm,
      String pickupDate,
      double distance,
      bool prpoposalAlreadyAdded,
      bool addedToFavorite,
      Location origin,
      Location destination,
      Customer customer});

  $LocationCopyWith<$Res> get origin;
  $LocationCopyWith<$Res> get destination;
  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class _$JobListPropertiesCopyWithImpl<$Res, $Val extends JobListProperties>
    implements $JobListPropertiesCopyWith<$Res> {
  _$JobListPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? tittle = null,
    Object? state = null,
    Object? vehiculeTypeName = null,
    Object? pricePerKm = null,
    Object? pickupDate = null,
    Object? distance = null,
    Object? prpoposalAlreadyAdded = null,
    Object? addedToFavorite = null,
    Object? origin = null,
    Object? destination = null,
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
      tittle: null == tittle
          ? _value.tittle
          : tittle // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      vehiculeTypeName: null == vehiculeTypeName
          ? _value.vehiculeTypeName
          : vehiculeTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerKm: null == pricePerKm
          ? _value.pricePerKm
          : pricePerKm // ignore: cast_nullable_to_non_nullable
              as double,
      pickupDate: null == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      prpoposalAlreadyAdded: null == prpoposalAlreadyAdded
          ? _value.prpoposalAlreadyAdded
          : prpoposalAlreadyAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      addedToFavorite: null == addedToFavorite
          ? _value.addedToFavorite
          : addedToFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
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
    ) as $Val);
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
abstract class _$$_JobListPropertiesCopyWith<$Res>
    implements $JobListPropertiesCopyWith<$Res> {
  factory _$$_JobListPropertiesCopyWith(_$_JobListProperties value,
          $Res Function(_$_JobListProperties) then) =
      __$$_JobListPropertiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String created,
      String tittle,
      String state,
      String vehiculeTypeName,
      double pricePerKm,
      String pickupDate,
      double distance,
      bool prpoposalAlreadyAdded,
      bool addedToFavorite,
      Location origin,
      Location destination,
      Customer customer});

  @override
  $LocationCopyWith<$Res> get origin;
  @override
  $LocationCopyWith<$Res> get destination;
  @override
  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class __$$_JobListPropertiesCopyWithImpl<$Res>
    extends _$JobListPropertiesCopyWithImpl<$Res, _$_JobListProperties>
    implements _$$_JobListPropertiesCopyWith<$Res> {
  __$$_JobListPropertiesCopyWithImpl(
      _$_JobListProperties _value, $Res Function(_$_JobListProperties) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? tittle = null,
    Object? state = null,
    Object? vehiculeTypeName = null,
    Object? pricePerKm = null,
    Object? pickupDate = null,
    Object? distance = null,
    Object? prpoposalAlreadyAdded = null,
    Object? addedToFavorite = null,
    Object? origin = null,
    Object? destination = null,
    Object? customer = null,
  }) {
    return _then(_$_JobListProperties(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      tittle: null == tittle
          ? _value.tittle
          : tittle // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      vehiculeTypeName: null == vehiculeTypeName
          ? _value.vehiculeTypeName
          : vehiculeTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerKm: null == pricePerKm
          ? _value.pricePerKm
          : pricePerKm // ignore: cast_nullable_to_non_nullable
              as double,
      pickupDate: null == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      prpoposalAlreadyAdded: null == prpoposalAlreadyAdded
          ? _value.prpoposalAlreadyAdded
          : prpoposalAlreadyAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      addedToFavorite: null == addedToFavorite
          ? _value.addedToFavorite
          : addedToFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobListProperties implements _JobListProperties {
  const _$_JobListProperties(
      {required this.id,
      required this.created,
      required this.tittle,
      required this.state,
      required this.vehiculeTypeName,
      required this.pricePerKm,
      required this.pickupDate,
      required this.distance,
      required this.prpoposalAlreadyAdded,
      required this.addedToFavorite,
      required this.origin,
      required this.destination,
      required this.customer});

  factory _$_JobListProperties.fromJson(Map<String, dynamic> json) =>
      _$$_JobListPropertiesFromJson(json);

  @override
  final String id;
  @override
  final String created;
  @override
  final String tittle;
  @override
  final String state;
  @override
  final String vehiculeTypeName;
  @override
  final double pricePerKm;
  @override
  final String pickupDate;
  @override
  final double distance;
  @override
  final bool prpoposalAlreadyAdded;
  @override
  final bool addedToFavorite;
  @override
  final Location origin;
  @override
  final Location destination;
  @override
  final Customer customer;

  @override
  String toString() {
    return 'JobListProperties(id: $id, created: $created, tittle: $tittle, state: $state, vehiculeTypeName: $vehiculeTypeName, pricePerKm: $pricePerKm, pickupDate: $pickupDate, distance: $distance, prpoposalAlreadyAdded: $prpoposalAlreadyAdded, addedToFavorite: $addedToFavorite, origin: $origin, destination: $destination, customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobListProperties &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.tittle, tittle) || other.tittle == tittle) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.vehiculeTypeName, vehiculeTypeName) ||
                other.vehiculeTypeName == vehiculeTypeName) &&
            (identical(other.pricePerKm, pricePerKm) ||
                other.pricePerKm == pricePerKm) &&
            (identical(other.pickupDate, pickupDate) ||
                other.pickupDate == pickupDate) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.prpoposalAlreadyAdded, prpoposalAlreadyAdded) ||
                other.prpoposalAlreadyAdded == prpoposalAlreadyAdded) &&
            (identical(other.addedToFavorite, addedToFavorite) ||
                other.addedToFavorite == addedToFavorite) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created,
      tittle,
      state,
      vehiculeTypeName,
      pricePerKm,
      pickupDate,
      distance,
      prpoposalAlreadyAdded,
      addedToFavorite,
      origin,
      destination,
      customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobListPropertiesCopyWith<_$_JobListProperties> get copyWith =>
      __$$_JobListPropertiesCopyWithImpl<_$_JobListProperties>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobListPropertiesToJson(
      this,
    );
  }
}

abstract class _JobListProperties implements JobListProperties {
  const factory _JobListProperties(
      {required final String id,
      required final String created,
      required final String tittle,
      required final String state,
      required final String vehiculeTypeName,
      required final double pricePerKm,
      required final String pickupDate,
      required final double distance,
      required final bool prpoposalAlreadyAdded,
      required final bool addedToFavorite,
      required final Location origin,
      required final Location destination,
      required final Customer customer}) = _$_JobListProperties;

  factory _JobListProperties.fromJson(Map<String, dynamic> json) =
      _$_JobListProperties.fromJson;

  @override
  String get id;
  @override
  String get created;
  @override
  String get tittle;
  @override
  String get state;
  @override
  String get vehiculeTypeName;
  @override
  double get pricePerKm;
  @override
  String get pickupDate;
  @override
  double get distance;
  @override
  bool get prpoposalAlreadyAdded;
  @override
  bool get addedToFavorite;
  @override
  Location get origin;
  @override
  Location get destination;
  @override
  Customer get customer;
  @override
  @JsonKey(ignore: true)
  _$$_JobListPropertiesCopyWith<_$_JobListProperties> get copyWith =>
      throw _privateConstructorUsedError;
}
