// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      city: json['city'] as String,
      street: json['street'] as String,
      postCode: json['postCode'] as String,
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'city': instance.city,
      'street': instance.street,
      'postCode': instance.postCode,
    };

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      imagePath: json['imagePath'] as String,
      spend: json['spend'] as int,
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'imagePath': instance.imagePath,
      'spend': instance.spend,
    };

_$_Cargo _$$_CargoFromJson(Map<String, dynamic> json) => _$_Cargo(
      weight: json['weight'] as int,
      width: json['width'] as int,
      height: json['height'] as int,
      lenght: json['lenght'] as int,
      imagePath: json['imagePath'] as String?,
    );

Map<String, dynamic> _$$_CargoToJson(_$_Cargo instance) => <String, dynamic>{
      'weight': instance.weight,
      'width': instance.width,
      'height': instance.height,
      'lenght': instance.lenght,
      'imagePath': instance.imagePath,
    };

_$_Addition _$$_AdditionFromJson(Map<String, dynamic> json) => _$_Addition(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_AdditionToJson(_$_Addition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
    };

_$_CostsSummary _$$_CostsSummaryFromJson(Map<String, dynamic> json) =>
    _$_CostsSummary(
      pricePerKm: (json['pricePerKm'] as num?)?.toDouble(),
      pricePerDistance: (json['pricePerDistance'] as num?)?.toDouble(),
      additions: (json['additions'] as List<dynamic>?)
          ?.map((e) => Addition.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: (json['price'] as num?)?.toDouble(),
      serviceFee: (json['serviceFee'] as num?)?.toDouble(),
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CostsSummaryToJson(_$_CostsSummary instance) =>
    <String, dynamic>{
      'pricePerKm': instance.pricePerKm,
      'pricePerDistance': instance.pricePerDistance,
      'additions': instance.additions,
      'price': instance.price,
      'serviceFee': instance.serviceFee,
      'totalPrice': instance.totalPrice,
    };

_$_Payment _$$_PaymentFromJson(Map<String, dynamic> json) => _$_Payment(
      date: DateTime.parse(json['date'] as String),
      value: (json['value'] as num).toDouble(),
      operation: json['operation'] as String,
    );

Map<String, dynamic> _$$_PaymentToJson(_$_Payment instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'value': instance.value,
      'operation': instance.operation,
    };

_$_DriverDetailsResponse _$$_DriverDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DriverDetailsResponse(
      driver: DriverDetailsProperties.fromJson(
          json['driver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DriverDetailsResponseToJson(
        _$_DriverDetailsResponse instance) =>
    <String, dynamic>{
      'driver': instance.driver,
    };

_$_DriverDetailsProperties _$$_DriverDetailsPropertiesFromJson(
        Map<String, dynamic> json) =>
    _$_DriverDetailsProperties(
      id: json['id'] as String?,
      created: json['created'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      ratedContracts: json['ratedContracts'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      imagePath: json['imagePath'] as String?,
      driverLicensePath: json['driverLicensePath'] as String?,
      vehiculeTypeName: json['vehiculeTypeName'] as String?,
      state: json['state'] as String?,
      balance: (json['balance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DriverDetailsPropertiesToJson(
        _$_DriverDetailsProperties instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'rating': instance.rating,
      'ratedContracts': instance.ratedContracts,
      'name': instance.name,
      'email': instance.email,
      'imagePath': instance.imagePath,
      'driverLicensePath': instance.driverLicensePath,
      'vehiculeTypeName': instance.vehiculeTypeName,
      'state': instance.state,
      'balance': instance.balance,
    };
