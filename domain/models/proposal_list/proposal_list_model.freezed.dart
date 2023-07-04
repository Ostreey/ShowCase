// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proposal_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProposalListResponse _$ProposalListResponseFromJson(Map<String, dynamic> json) {
  return _ProposalListResponse.fromJson(json);
}

/// @nodoc
mixin _$ProposalListResponse {
  List<ProposalListProperties> get data => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProposalListResponseCopyWith<ProposalListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalListResponseCopyWith<$Res> {
  factory $ProposalListResponseCopyWith(ProposalListResponse value,
          $Res Function(ProposalListResponse) then) =
      _$ProposalListResponseCopyWithImpl<$Res, ProposalListResponse>;
  @useResult
  $Res call(
      {List<ProposalListProperties> data,
      int totalCount,
      int pages,
      int pageSize,
      int currentPage});
}

/// @nodoc
class _$ProposalListResponseCopyWithImpl<$Res,
        $Val extends ProposalListResponse>
    implements $ProposalListResponseCopyWith<$Res> {
  _$ProposalListResponseCopyWithImpl(this._value, this._then);

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
              as List<ProposalListProperties>,
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
abstract class _$$_ProposalListResponseCopyWith<$Res>
    implements $ProposalListResponseCopyWith<$Res> {
  factory _$$_ProposalListResponseCopyWith(_$_ProposalListResponse value,
          $Res Function(_$_ProposalListResponse) then) =
      __$$_ProposalListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProposalListProperties> data,
      int totalCount,
      int pages,
      int pageSize,
      int currentPage});
}

/// @nodoc
class __$$_ProposalListResponseCopyWithImpl<$Res>
    extends _$ProposalListResponseCopyWithImpl<$Res, _$_ProposalListResponse>
    implements _$$_ProposalListResponseCopyWith<$Res> {
  __$$_ProposalListResponseCopyWithImpl(_$_ProposalListResponse _value,
      $Res Function(_$_ProposalListResponse) _then)
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
    return _then(_$_ProposalListResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProposalListProperties>,
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
class _$_ProposalListResponse implements _ProposalListResponse {
  const _$_ProposalListResponse(
      {required final List<ProposalListProperties> data,
      required this.totalCount,
      required this.pages,
      required this.pageSize,
      required this.currentPage})
      : _data = data;

  factory _$_ProposalListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProposalListResponseFromJson(json);

  final List<ProposalListProperties> _data;
  @override
  List<ProposalListProperties> get data {
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
    return 'ProposalListResponse(data: $data, totalCount: $totalCount, pages: $pages, pageSize: $pageSize, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProposalListResponse &&
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
  _$$_ProposalListResponseCopyWith<_$_ProposalListResponse> get copyWith =>
      __$$_ProposalListResponseCopyWithImpl<_$_ProposalListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProposalListResponseToJson(
      this,
    );
  }
}

abstract class _ProposalListResponse implements ProposalListResponse {
  const factory _ProposalListResponse(
      {required final List<ProposalListProperties> data,
      required final int totalCount,
      required final int pages,
      required final int pageSize,
      required final int currentPage}) = _$_ProposalListResponse;

  factory _ProposalListResponse.fromJson(Map<String, dynamic> json) =
      _$_ProposalListResponse.fromJson;

  @override
  List<ProposalListProperties> get data;
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
  _$$_ProposalListResponseCopyWith<_$_ProposalListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ProposalListProperties _$ProposalListPropertiesFromJson(
    Map<String, dynamic> json) {
  return _ProposalListProperties.fromJson(json);
}

/// @nodoc
mixin _$ProposalListProperties {
  String get id => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  String get jobId => throw _privateConstructorUsedError;
  double get pricePerKm => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get jobTittle => throw _privateConstructorUsedError;
  String get pickupDate => throw _privateConstructorUsedError;
  Location get origin => throw _privateConstructorUsedError;
  Location get destination => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProposalListPropertiesCopyWith<ProposalListProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalListPropertiesCopyWith<$Res> {
  factory $ProposalListPropertiesCopyWith(ProposalListProperties value,
          $Res Function(ProposalListProperties) then) =
      _$ProposalListPropertiesCopyWithImpl<$Res, ProposalListProperties>;
  @useResult
  $Res call(
      {String id,
      String created,
      String jobId,
      double pricePerKm,
      String state,
      String jobTittle,
      String pickupDate,
      Location origin,
      Location destination,
      Customer customer});

  $LocationCopyWith<$Res> get origin;
  $LocationCopyWith<$Res> get destination;
  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class _$ProposalListPropertiesCopyWithImpl<$Res,
        $Val extends ProposalListProperties>
    implements $ProposalListPropertiesCopyWith<$Res> {
  _$ProposalListPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? jobId = null,
    Object? pricePerKm = null,
    Object? state = null,
    Object? jobTittle = null,
    Object? pickupDate = null,
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
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerKm: null == pricePerKm
          ? _value.pricePerKm
          : pricePerKm // ignore: cast_nullable_to_non_nullable
              as double,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      jobTittle: null == jobTittle
          ? _value.jobTittle
          : jobTittle // ignore: cast_nullable_to_non_nullable
              as String,
      pickupDate: null == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_ProposalListPropertiesCopyWith<$Res>
    implements $ProposalListPropertiesCopyWith<$Res> {
  factory _$$_ProposalListPropertiesCopyWith(_$_ProposalListProperties value,
          $Res Function(_$_ProposalListProperties) then) =
      __$$_ProposalListPropertiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String created,
      String jobId,
      double pricePerKm,
      String state,
      String jobTittle,
      String pickupDate,
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
class __$$_ProposalListPropertiesCopyWithImpl<$Res>
    extends _$ProposalListPropertiesCopyWithImpl<$Res,
        _$_ProposalListProperties>
    implements _$$_ProposalListPropertiesCopyWith<$Res> {
  __$$_ProposalListPropertiesCopyWithImpl(_$_ProposalListProperties _value,
      $Res Function(_$_ProposalListProperties) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? jobId = null,
    Object? pricePerKm = null,
    Object? state = null,
    Object? jobTittle = null,
    Object? pickupDate = null,
    Object? origin = null,
    Object? destination = null,
    Object? customer = null,
  }) {
    return _then(_$_ProposalListProperties(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerKm: null == pricePerKm
          ? _value.pricePerKm
          : pricePerKm // ignore: cast_nullable_to_non_nullable
              as double,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      jobTittle: null == jobTittle
          ? _value.jobTittle
          : jobTittle // ignore: cast_nullable_to_non_nullable
              as String,
      pickupDate: null == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_ProposalListProperties implements _ProposalListProperties {
  const _$_ProposalListProperties(
      {required this.id,
      required this.created,
      required this.jobId,
      required this.pricePerKm,
      required this.state,
      required this.jobTittle,
      required this.pickupDate,
      required this.origin,
      required this.destination,
      required this.customer});

  factory _$_ProposalListProperties.fromJson(Map<String, dynamic> json) =>
      _$$_ProposalListPropertiesFromJson(json);

  @override
  final String id;
  @override
  final String created;
  @override
  final String jobId;
  @override
  final double pricePerKm;
  @override
  final String state;
  @override
  final String jobTittle;
  @override
  final String pickupDate;
  @override
  final Location origin;
  @override
  final Location destination;
  @override
  final Customer customer;

  @override
  String toString() {
    return 'ProposalListProperties(id: $id, created: $created, jobId: $jobId, pricePerKm: $pricePerKm, state: $state, jobTittle: $jobTittle, pickupDate: $pickupDate, origin: $origin, destination: $destination, customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProposalListProperties &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.pricePerKm, pricePerKm) ||
                other.pricePerKm == pricePerKm) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.jobTittle, jobTittle) ||
                other.jobTittle == jobTittle) &&
            (identical(other.pickupDate, pickupDate) ||
                other.pickupDate == pickupDate) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, created, jobId, pricePerKm,
      state, jobTittle, pickupDate, origin, destination, customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProposalListPropertiesCopyWith<_$_ProposalListProperties> get copyWith =>
      __$$_ProposalListPropertiesCopyWithImpl<_$_ProposalListProperties>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProposalListPropertiesToJson(
      this,
    );
  }
}

abstract class _ProposalListProperties implements ProposalListProperties {
  const factory _ProposalListProperties(
      {required final String id,
      required final String created,
      required final String jobId,
      required final double pricePerKm,
      required final String state,
      required final String jobTittle,
      required final String pickupDate,
      required final Location origin,
      required final Location destination,
      required final Customer customer}) = _$_ProposalListProperties;

  factory _ProposalListProperties.fromJson(Map<String, dynamic> json) =
      _$_ProposalListProperties.fromJson;

  @override
  String get id;
  @override
  String get created;
  @override
  String get jobId;
  @override
  double get pricePerKm;
  @override
  String get state;
  @override
  String get jobTittle;
  @override
  String get pickupDate;
  @override
  Location get origin;
  @override
  Location get destination;
  @override
  Customer get customer;
  @override
  @JsonKey(ignore: true)
  _$$_ProposalListPropertiesCopyWith<_$_ProposalListProperties> get copyWith =>
      throw _privateConstructorUsedError;
}
