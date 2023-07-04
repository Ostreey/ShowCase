// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposal_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProposalListResponse _$$_ProposalListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProposalListResponse(
      data: (json['data'] as List<dynamic>)
          .map(
              (e) => ProposalListProperties.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int,
      pages: json['pages'] as int,
      pageSize: json['pageSize'] as int,
      currentPage: json['currentPage'] as int,
    );

Map<String, dynamic> _$$_ProposalListResponseToJson(
        _$_ProposalListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalCount': instance.totalCount,
      'pages': instance.pages,
      'pageSize': instance.pageSize,
      'currentPage': instance.currentPage,
    };

_$_ProposalListProperties _$$_ProposalListPropertiesFromJson(
        Map<String, dynamic> json) =>
    _$_ProposalListProperties(
      id: json['id'] as String,
      created: json['created'] as String,
      jobId: json['jobId'] as String,
      pricePerKm: (json['pricePerKm'] as num).toDouble(),
      state: json['state'] as String,
      jobTittle: json['jobTittle'] as String,
      pickupDate: json['pickupDate'] as String,
      origin: Location.fromJson(json['origin'] as Map<String, dynamic>),
      destination:
          Location.fromJson(json['destination'] as Map<String, dynamic>),
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProposalListPropertiesToJson(
        _$_ProposalListProperties instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'jobId': instance.jobId,
      'pricePerKm': instance.pricePerKm,
      'state': instance.state,
      'jobTittle': instance.jobTittle,
      'pickupDate': instance.pickupDate,
      'origin': instance.origin,
      'destination': instance.destination,
      'customer': instance.customer,
    };
