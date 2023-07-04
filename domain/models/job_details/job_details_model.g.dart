// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobDetailsResponse _$$_JobDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_JobDetailsResponse(
      job: JobDetailsProperties.fromJson(json['job'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_JobDetailsResponseToJson(
        _$_JobDetailsResponse instance) =>
    <String, dynamic>{
      'job': instance.job,
    };

_$_JobDetailsProperties _$$_JobDetailsPropertiesFromJson(
        Map<String, dynamic> json) =>
    _$_JobDetailsProperties(
      id: json['id'] as String,
      created: json['created'] as String,
      vehiculeTypeName: json['vehiculeTypeName'] as String,
      requireLoadingCrew: json['requireLoadingCrew'] as bool,
      requireUnloadingCrew: json['requireUnloadingCrew'] as bool,
      prpoposalAlreadyAdded: json['prpoposalAlreadyAdded'] as bool,
      description: json['description'] as String,
      tittle: json['tittle'] as String,
      distance: json['distance'] as int,
      pricePerKm: (json['pricePerKm'] as num).toDouble(),
      pickupDate: json['pickupDate'] as String,
      deliveryDate: json['deliveryDate'] as String,
      cargo: Cargo.fromJson(json['cargo'] as Map<String, dynamic>),
      origin: Location.fromJson(json['origin'] as Map<String, dynamic>),
      destination:
          Location.fromJson(json['destination'] as Map<String, dynamic>),
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
      state: json['state'] as String,
    );

Map<String, dynamic> _$$_JobDetailsPropertiesToJson(
        _$_JobDetailsProperties instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'vehiculeTypeName': instance.vehiculeTypeName,
      'requireLoadingCrew': instance.requireLoadingCrew,
      'requireUnloadingCrew': instance.requireUnloadingCrew,
      'prpoposalAlreadyAdded': instance.prpoposalAlreadyAdded,
      'description': instance.description,
      'tittle': instance.tittle,
      'distance': instance.distance,
      'pricePerKm': instance.pricePerKm,
      'pickupDate': instance.pickupDate,
      'deliveryDate': instance.deliveryDate,
      'cargo': instance.cargo,
      'origin': instance.origin,
      'destination': instance.destination,
      'customer': instance.customer,
      'state': instance.state,
    };
