// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobListResponse _$$_JobListResponseFromJson(Map<String, dynamic> json) =>
    _$_JobListResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => JobListProperties.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int,
      pages: json['pages'] as int,
      pageSize: json['pageSize'] as int,
      currentPage: json['currentPage'] as int,
    );

Map<String, dynamic> _$$_JobListResponseToJson(_$_JobListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalCount': instance.totalCount,
      'pages': instance.pages,
      'pageSize': instance.pageSize,
      'currentPage': instance.currentPage,
    };

_$_JobListProperties _$$_JobListPropertiesFromJson(Map<String, dynamic> json) =>
    _$_JobListProperties(
      id: json['id'] as String,
      created: json['created'] as String,
      tittle: json['tittle'] as String,
      state: json['state'] as String,
      vehiculeTypeName: json['vehiculeTypeName'] as String,
      pricePerKm: (json['pricePerKm'] as num).toDouble(),
      pickupDate: json['pickupDate'] as String,
      distance: (json['distance'] as num).toDouble(),
      prpoposalAlreadyAdded: json['prpoposalAlreadyAdded'] as bool,
      addedToFavorite: json['addedToFavorite'] as bool,
      origin: Location.fromJson(json['origin'] as Map<String, dynamic>),
      destination:
          Location.fromJson(json['destination'] as Map<String, dynamic>),
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_JobListPropertiesToJson(
        _$_JobListProperties instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'tittle': instance.tittle,
      'state': instance.state,
      'vehiculeTypeName': instance.vehiculeTypeName,
      'pricePerKm': instance.pricePerKm,
      'pickupDate': instance.pickupDate,
      'distance': instance.distance,
      'prpoposalAlreadyAdded': instance.prpoposalAlreadyAdded,
      'addedToFavorite': instance.addedToFavorite,
      'origin': instance.origin,
      'destination': instance.destination,
      'customer': instance.customer,
    };
