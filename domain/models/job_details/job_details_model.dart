import 'package:freezed_annotation/freezed_annotation.dart';

import '../common_models/model.dart';
part 'job_details_model.freezed.dart';
part 'job_details_model.g.dart';



@freezed
class JobDetailsResponse with _$JobDetailsResponse {
  const factory JobDetailsResponse({
    required JobDetailsProperties job,
  }) = _JobDetailsResponse;

  factory JobDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$JobDetailsResponseFromJson(json);
}

@freezed
class JobDetailsProperties with _$JobDetailsProperties {
  factory JobDetailsProperties({
    required String id,
    required String created,
    required String vehiculeTypeName,
    required bool requireLoadingCrew,
    required bool requireUnloadingCrew,
    required bool prpoposalAlreadyAdded,
    required String description,
    required String tittle,
    required int distance,
    required double pricePerKm,
    required String pickupDate,
    required String deliveryDate,
    required Cargo cargo,
    required Location origin,
    required Location destination,
    required Customer customer,
    required String state,
  }) = _JobDetailsProperties;

  factory JobDetailsProperties.fromJson(Map<String, dynamic> json) =>
      _$JobDetailsPropertiesFromJson(json);
}


