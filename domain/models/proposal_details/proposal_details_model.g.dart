// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposal_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProposalDetailsProperties _$$_ProposalDetailsPropertiesFromJson(
        Map<String, dynamic> json) =>
    _$_ProposalDetailsProperties(
      id: json['id'] as String,
      proposalCreated: json['proposalCreated'] as String,
      jobCreated: json['jobCreated'] as String,
      vehiculeTypeName: json['vehiculeTypeName'] as String,
      requireLoadingCrew: json['requireLoadingCrew'] as bool,
      requireUnloadingCrew: json['requireUnloadingCrew'] as bool,
      description: json['description'] as String,
      tittle: json['tittle'] as String,
      distance: json['distance'] as int,
      jobsPricePerKm: (json['jobsPricePerKm'] as num).toDouble(),
      driversPricePerKm: (json['driversPricePerKm'] as num).toDouble(),
      state: json['state'] as String,
      pickupDate: json['pickupDate'] as String,
      deliveryDate: json['deliveryDate'] as String,
      cargo: Cargo.fromJson(json['cargo'] as Map<String, dynamic>),
      origin: Location.fromJson(json['origin'] as Map<String, dynamic>),
      destination:
          Location.fromJson(json['destination'] as Map<String, dynamic>),
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
      costsSummary:
          CostsSummary.fromJson(json['costsSummary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProposalDetailsPropertiesToJson(
        _$_ProposalDetailsProperties instance) =>
    <String, dynamic>{
      'id': instance.id,
      'proposalCreated': instance.proposalCreated,
      'jobCreated': instance.jobCreated,
      'vehiculeTypeName': instance.vehiculeTypeName,
      'requireLoadingCrew': instance.requireLoadingCrew,
      'requireUnloadingCrew': instance.requireUnloadingCrew,
      'description': instance.description,
      'tittle': instance.tittle,
      'distance': instance.distance,
      'jobsPricePerKm': instance.jobsPricePerKm,
      'driversPricePerKm': instance.driversPricePerKm,
      'state': instance.state,
      'pickupDate': instance.pickupDate,
      'deliveryDate': instance.deliveryDate,
      'cargo': instance.cargo,
      'origin': instance.origin,
      'destination': instance.destination,
      'customer': instance.customer,
      'costsSummary': instance.costsSummary,
    };

_$_ProposalDetailsResponse _$$_ProposalDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProposalDetailsResponse(
      proposal: ProposalDetailsProperties.fromJson(
          json['proposal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProposalDetailsResponseToJson(
        _$_ProposalDetailsResponse instance) =>
    <String, dynamic>{
      'proposal': instance.proposal,
    };
