// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContractListResponse _$ContractListResponseFromJson(Map<String, dynamic> json) {
  return _ContractListResponse.fromJson(json);
}

/// @nodoc
mixin _$ContractListResponse {
  List<ContractListProperties> get data => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractListResponseCopyWith<ContractListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractListResponseCopyWith<$Res> {
  factory $ContractListResponseCopyWith(ContractListResponse value,
          $Res Function(ContractListResponse) then) =
      _$ContractListResponseCopyWithImpl<$Res, ContractListResponse>;
  @useResult
  $Res call(
      {List<ContractListProperties> data,
      int totalCount,
      int pages,
      int pageSize,
      int currentPage});
}

/// @nodoc
class _$ContractListResponseCopyWithImpl<$Res,
        $Val extends ContractListResponse>
    implements $ContractListResponseCopyWith<$Res> {
  _$ContractListResponseCopyWithImpl(this._value, this._then);

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
              as List<ContractListProperties>,
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
abstract class _$$_ContractListResponseCopyWith<$Res>
    implements $ContractListResponseCopyWith<$Res> {
  factory _$$_ContractListResponseCopyWith(_$_ContractListResponse value,
          $Res Function(_$_ContractListResponse) then) =
      __$$_ContractListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ContractListProperties> data,
      int totalCount,
      int pages,
      int pageSize,
      int currentPage});
}

/// @nodoc
class __$$_ContractListResponseCopyWithImpl<$Res>
    extends _$ContractListResponseCopyWithImpl<$Res, _$_ContractListResponse>
    implements _$$_ContractListResponseCopyWith<$Res> {
  __$$_ContractListResponseCopyWithImpl(_$_ContractListResponse _value,
      $Res Function(_$_ContractListResponse) _then)
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
    return _then(_$_ContractListResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ContractListProperties>,
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
class _$_ContractListResponse implements _ContractListResponse {
  const _$_ContractListResponse(
      {required final List<ContractListProperties> data,
      required this.totalCount,
      required this.pages,
      required this.pageSize,
      required this.currentPage})
      : _data = data;

  factory _$_ContractListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ContractListResponseFromJson(json);

  final List<ContractListProperties> _data;
  @override
  List<ContractListProperties> get data {
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
    return 'ContractListResponse(data: $data, totalCount: $totalCount, pages: $pages, pageSize: $pageSize, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContractListResponse &&
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
  _$$_ContractListResponseCopyWith<_$_ContractListResponse> get copyWith =>
      __$$_ContractListResponseCopyWithImpl<_$_ContractListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContractListResponseToJson(
      this,
    );
  }
}

abstract class _ContractListResponse implements ContractListResponse {
  const factory _ContractListResponse(
      {required final List<ContractListProperties> data,
      required final int totalCount,
      required final int pages,
      required final int pageSize,
      required final int currentPage}) = _$_ContractListResponse;

  factory _ContractListResponse.fromJson(Map<String, dynamic> json) =
      _$_ContractListResponse.fromJson;

  @override
  List<ContractListProperties> get data;
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
  _$$_ContractListResponseCopyWith<_$_ContractListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractListProperties _$ContractListPropertiesFromJson(
    Map<String, dynamic> json) {
  return _ContractListProperties.fromJson(json);
}

/// @nodoc
mixin _$ContractListProperties {
  String get id => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  String get jobTittle => throw _privateConstructorUsedError;
  Location get origin => throw _privateConstructorUsedError;
  Location get destination => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get stateChanged => throw _privateConstructorUsedError;
  String get jobId => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  double? get contractValue => throw _privateConstructorUsedError;
  String? get paymentState => throw _privateConstructorUsedError;
  bool? get isInDispute => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractListPropertiesCopyWith<ContractListProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractListPropertiesCopyWith<$Res> {
  factory $ContractListPropertiesCopyWith(ContractListProperties value,
          $Res Function(ContractListProperties) then) =
      _$ContractListPropertiesCopyWithImpl<$Res, ContractListProperties>;
  @useResult
  $Res call(
      {String id,
      String created,
      String jobTittle,
      Location origin,
      Location destination,
      String state,
      String stateChanged,
      String jobId,
      double? rating,
      double? contractValue,
      String? paymentState,
      bool? isInDispute});

  $LocationCopyWith<$Res> get origin;
  $LocationCopyWith<$Res> get destination;
}

/// @nodoc
class _$ContractListPropertiesCopyWithImpl<$Res,
        $Val extends ContractListProperties>
    implements $ContractListPropertiesCopyWith<$Res> {
  _$ContractListPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? jobTittle = null,
    Object? origin = null,
    Object? destination = null,
    Object? state = null,
    Object? stateChanged = null,
    Object? jobId = null,
    Object? rating = freezed,
    Object? contractValue = freezed,
    Object? paymentState = freezed,
    Object? isInDispute = freezed,
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
      jobTittle: null == jobTittle
          ? _value.jobTittle
          : jobTittle // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Location,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Location,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      stateChanged: null == stateChanged
          ? _value.stateChanged
          : stateChanged // ignore: cast_nullable_to_non_nullable
              as String,
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      contractValue: freezed == contractValue
          ? _value.contractValue
          : contractValue // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentState: freezed == paymentState
          ? _value.paymentState
          : paymentState // ignore: cast_nullable_to_non_nullable
              as String?,
      isInDispute: freezed == isInDispute
          ? _value.isInDispute
          : isInDispute // ignore: cast_nullable_to_non_nullable
              as bool?,
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
}

/// @nodoc
abstract class _$$_ContractListPropertiesCopyWith<$Res>
    implements $ContractListPropertiesCopyWith<$Res> {
  factory _$$_ContractListPropertiesCopyWith(_$_ContractListProperties value,
          $Res Function(_$_ContractListProperties) then) =
      __$$_ContractListPropertiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String created,
      String jobTittle,
      Location origin,
      Location destination,
      String state,
      String stateChanged,
      String jobId,
      double? rating,
      double? contractValue,
      String? paymentState,
      bool? isInDispute});

  @override
  $LocationCopyWith<$Res> get origin;
  @override
  $LocationCopyWith<$Res> get destination;
}

/// @nodoc
class __$$_ContractListPropertiesCopyWithImpl<$Res>
    extends _$ContractListPropertiesCopyWithImpl<$Res,
        _$_ContractListProperties>
    implements _$$_ContractListPropertiesCopyWith<$Res> {
  __$$_ContractListPropertiesCopyWithImpl(_$_ContractListProperties _value,
      $Res Function(_$_ContractListProperties) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? jobTittle = null,
    Object? origin = null,
    Object? destination = null,
    Object? state = null,
    Object? stateChanged = null,
    Object? jobId = null,
    Object? rating = freezed,
    Object? contractValue = freezed,
    Object? paymentState = freezed,
    Object? isInDispute = freezed,
  }) {
    return _then(_$_ContractListProperties(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      jobTittle: null == jobTittle
          ? _value.jobTittle
          : jobTittle // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Location,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Location,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      stateChanged: null == stateChanged
          ? _value.stateChanged
          : stateChanged // ignore: cast_nullable_to_non_nullable
              as String,
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      contractValue: freezed == contractValue
          ? _value.contractValue
          : contractValue // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentState: freezed == paymentState
          ? _value.paymentState
          : paymentState // ignore: cast_nullable_to_non_nullable
              as String?,
      isInDispute: freezed == isInDispute
          ? _value.isInDispute
          : isInDispute // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContractListProperties implements _ContractListProperties {
  _$_ContractListProperties(
      {required this.id,
      required this.created,
      required this.jobTittle,
      required this.origin,
      required this.destination,
      required this.state,
      required this.stateChanged,
      required this.jobId,
      this.rating,
      this.contractValue,
      this.paymentState,
      this.isInDispute});

  factory _$_ContractListProperties.fromJson(Map<String, dynamic> json) =>
      _$$_ContractListPropertiesFromJson(json);

  @override
  final String id;
  @override
  final String created;
  @override
  final String jobTittle;
  @override
  final Location origin;
  @override
  final Location destination;
  @override
  final String state;
  @override
  final String stateChanged;
  @override
  final String jobId;
  @override
  final double? rating;
  @override
  final double? contractValue;
  @override
  final String? paymentState;
  @override
  final bool? isInDispute;

  @override
  String toString() {
    return 'ContractListProperties(id: $id, created: $created, jobTittle: $jobTittle, origin: $origin, destination: $destination, state: $state, stateChanged: $stateChanged, jobId: $jobId, rating: $rating, contractValue: $contractValue, paymentState: $paymentState, isInDispute: $isInDispute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContractListProperties &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.jobTittle, jobTittle) ||
                other.jobTittle == jobTittle) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.stateChanged, stateChanged) ||
                other.stateChanged == stateChanged) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.contractValue, contractValue) ||
                other.contractValue == contractValue) &&
            (identical(other.paymentState, paymentState) ||
                other.paymentState == paymentState) &&
            (identical(other.isInDispute, isInDispute) ||
                other.isInDispute == isInDispute));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created,
      jobTittle,
      origin,
      destination,
      state,
      stateChanged,
      jobId,
      rating,
      contractValue,
      paymentState,
      isInDispute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContractListPropertiesCopyWith<_$_ContractListProperties> get copyWith =>
      __$$_ContractListPropertiesCopyWithImpl<_$_ContractListProperties>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContractListPropertiesToJson(
      this,
    );
  }
}

abstract class _ContractListProperties implements ContractListProperties {
  factory _ContractListProperties(
      {required final String id,
      required final String created,
      required final String jobTittle,
      required final Location origin,
      required final Location destination,
      required final String state,
      required final String stateChanged,
      required final String jobId,
      final double? rating,
      final double? contractValue,
      final String? paymentState,
      final bool? isInDispute}) = _$_ContractListProperties;

  factory _ContractListProperties.fromJson(Map<String, dynamic> json) =
      _$_ContractListProperties.fromJson;

  @override
  String get id;
  @override
  String get created;
  @override
  String get jobTittle;
  @override
  Location get origin;
  @override
  Location get destination;
  @override
  String get state;
  @override
  String get stateChanged;
  @override
  String get jobId;
  @override
  double? get rating;
  @override
  double? get contractValue;
  @override
  String? get paymentState;
  @override
  bool? get isInDispute;
  @override
  @JsonKey(ignore: true)
  _$$_ContractListPropertiesCopyWith<_$_ContractListProperties> get copyWith =>
      throw _privateConstructorUsedError;
}
