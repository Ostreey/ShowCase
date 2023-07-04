import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    required String city,
    required String street,
    required String postCode,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Customer with _$Customer {
  const factory Customer({
    required String id,
    required String name,
    required String email,
    required String imagePath,
    required int spend,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}

@freezed
class Cargo with _$Cargo {
  factory Cargo({
    required int weight,
    required int width,
    required int height,
    required int lenght,
    String? imagePath,
  }) = _Cargo;

  factory Cargo.fromJson(Map<String, dynamic> json) => _$CargoFromJson(json);
}

@freezed
class Addition with _$Addition {
  factory Addition({
    required String name,
    required double price,
  }) = _Addition;

  factory Addition.fromJson(Map<String, dynamic> json) =>
      _$AdditionFromJson(json);
}

@freezed
class CostsSummary with _$CostsSummary {
  factory CostsSummary({
    double? pricePerKm,
    double? pricePerDistance,
    List<Addition>? additions,
    double? price,
    double? serviceFee,
    double? totalPrice,
  }) = _CostsSummary;

  factory CostsSummary.fromJson(Map<String, dynamic> json) =>
      _$CostsSummaryFromJson(json);
}


@freezed
class Payment with _$Payment {
  factory Payment({
    required DateTime date,
    required double value,
    required String operation,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}



class Filtering {
  String search;

  Filtering(
      this.search);
}


@freezed
class DriverDetailsResponse with _$DriverDetailsResponse {
  const factory DriverDetailsResponse({
    required DriverDetailsProperties driver,
  }) = _DriverDetailsResponse;

  factory DriverDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$DriverDetailsResponseFromJson(json);
}

@freezed
class DriverDetailsProperties with _$DriverDetailsProperties {
  factory DriverDetailsProperties({
    String? id,
    String? created,
    double? rating,
    int? ratedContracts,
    String? name,
    String? email,
    String? imagePath,
    String? driverLicensePath,
    String? vehiculeTypeName,
    String? state,
    double? balance,
  }) = _DriverDetailsProperties;

  factory DriverDetailsProperties.fromJson(Map<String, dynamic> json) =>
      _$DriverDetailsPropertiesFromJson(json);

}


class VehiculeTypeProperties {
  final String id;
  final String name;

  VehiculeTypeProperties({
    required this.id,
    required this.name,
  });
}

class VehiculeTypeData {
  final List<VehiculeTypeProperties> vehiculeTypePropertiesList;

  VehiculeTypeData({
    required this.vehiculeTypePropertiesList,
  });

  factory VehiculeTypeData.fromJson(Map<String, dynamic> json) {
    var data = json["vehiculeTypes"];
    List<VehiculeTypeProperties> vehiculeTypePropertiesList = [];

    for (var vehiculeTypePropertiesJson in data) {
      vehiculeTypePropertiesList.add(VehiculeTypeProperties(
          id: vehiculeTypePropertiesJson["id"],
          name: vehiculeTypePropertiesJson["name"]));
    }

    return VehiculeTypeData(
        vehiculeTypePropertiesList: vehiculeTypePropertiesList);
  }
}