// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContractListResponse _$$_ContractListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ContractListResponse(
      data: (json['data'] as List<dynamic>)
          .map(
              (e) => ContractListProperties.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int,
      pages: json['pages'] as int,
      pageSize: json['pageSize'] as int,
      currentPage: json['currentPage'] as int,
    );

Map<String, dynamic> _$$_ContractListResponseToJson(
        _$_ContractListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalCount': instance.totalCount,
      'pages': instance.pages,
      'pageSize': instance.pageSize,
      'currentPage': instance.currentPage,
    };

_$_ContractListProperties _$$_ContractListPropertiesFromJson(
        Map<String, dynamic> json) =>
    _$_ContractListProperties(
      id: json['id'] as String,
      created: json['created'] as String,
      jobTittle: json['jobTittle'] as String,
      origin: Location.fromJson(json['origin'] as Map<String, dynamic>),
      destination:
          Location.fromJson(json['destination'] as Map<String, dynamic>),
      state: json['state'] as String,
      stateChanged: json['stateChanged'] as String,
      jobId: json['jobId'] as String,
      rating: (json['rating'] as num?)?.toDouble(),
      contractValue: (json['contractValue'] as num?)?.toDouble(),
      paymentState: json['paymentState'] as String?,
      isInDispute: json['isInDispute'] as bool?,
    );

Map<String, dynamic> _$$_ContractListPropertiesToJson(
        _$_ContractListProperties instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'jobTittle': instance.jobTittle,
      'origin': instance.origin,
      'destination': instance.destination,
      'state': instance.state,
      'stateChanged': instance.stateChanged,
      'jobId': instance.jobId,
      'rating': instance.rating,
      'contractValue': instance.contractValue,
      'paymentState': instance.paymentState,
      'isInDispute': instance.isInDispute,
    };
