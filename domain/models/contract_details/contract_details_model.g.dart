// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContractDetailsProperties _$$_ContractDetailsPropertiesFromJson(
        Map<String, dynamic> json) =>
    _$_ContractDetailsProperties(
      id: json['id'] as String,
      created: json['created'] as String,
      rating: (json['rating'] as num?)?.toDouble() ?? 5.0,
      vehiculeTypeName: json['vehiculeTypeName'] as String,
      description: json['description'] as String,
      tittle: json['tittle'] as String,
      distance: json['distance'] as int,
      pickupDate: json['pickupDate'] as String,
      deliveryDate: json['deliveryDate'] as String,
      cargo: Cargo.fromJson(json['cargo'] as Map<String, dynamic>),
      origin: Location.fromJson(json['origin'] as Map<String, dynamic>),
      destination:
          Location.fromJson(json['destination'] as Map<String, dynamic>),
      requireLoadingCrew: json['requireLoadingCrew'] as bool,
      requireUnloadingCrew: json['requireUnloadingCrew'] as bool,
      paymentState: json['paymentState'] as String,
      state: json['state'] as String,
      stateChanged: json['stateChanged'] as String,
      isInDispute: json['isInDispute'] as bool,
      pickUpCargoImagePath: json['pickUpCargoImagePath'] as String?,
      pickUpProofImagePath: json['pickUpProofImagePath'] as String?,
      deliveryCargoImagePath: json['deliveryCargoImagePath'] as String?,
      deliveryProofImagePath: json['deliveryProofImagePath'] as String?,
      costsSummary:
          CostsSummary.fromJson(json['costsSummary'] as Map<String, dynamic>),
      payments: (json['payments'] as List<dynamic>?)
          ?.map((e) => Payment.fromJson(e as Map<String, dynamic>))
          .toList(),
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ContractDetailsPropertiesToJson(
        _$_ContractDetailsProperties instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'rating': instance.rating,
      'vehiculeTypeName': instance.vehiculeTypeName,
      'description': instance.description,
      'tittle': instance.tittle,
      'distance': instance.distance,
      'pickupDate': instance.pickupDate,
      'deliveryDate': instance.deliveryDate,
      'cargo': instance.cargo,
      'origin': instance.origin,
      'destination': instance.destination,
      'requireLoadingCrew': instance.requireLoadingCrew,
      'requireUnloadingCrew': instance.requireUnloadingCrew,
      'paymentState': instance.paymentState,
      'state': instance.state,
      'stateChanged': instance.stateChanged,
      'isInDispute': instance.isInDispute,
      'pickUpCargoImagePath': instance.pickUpCargoImagePath,
      'pickUpProofImagePath': instance.pickUpProofImagePath,
      'deliveryCargoImagePath': instance.deliveryCargoImagePath,
      'deliveryProofImagePath': instance.deliveryProofImagePath,
      'costsSummary': instance.costsSummary,
      'payments': instance.payments,
      'customer': instance.customer,
    };

_$_ContractDetailsResponse _$$_ContractDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ContractDetailsResponse(
      contract: ContractDetailsProperties.fromJson(
          json['contract'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ContractDetailsResponseToJson(
        _$_ContractDetailsResponse instance) =>
    <String, dynamic>{
      'contract': instance.contract,
    };
