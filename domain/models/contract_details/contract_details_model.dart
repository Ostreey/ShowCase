import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../common_models/model.dart';


part 'contract_details_model.freezed.dart';
part 'contract_details_model.g.dart';


@freezed
class ContractDetailsProperties with _$ContractDetailsProperties {
  factory ContractDetailsProperties({
    required String id,
    required String created,
    @Default(5.0) double rating,
    required String vehiculeTypeName,
    required String description,
    required String tittle,
    required int distance,
    required String pickupDate,
    required String deliveryDate,
    required Cargo cargo,
    required Location origin,
    required Location destination,
    required bool requireLoadingCrew,
    required bool requireUnloadingCrew,
    required String paymentState,
    required String state,
    required String stateChanged,
    required bool isInDispute,
    String? pickUpCargoImagePath,
    String? pickUpProofImagePath,
    String? deliveryCargoImagePath,
    String? deliveryProofImagePath,
    required CostsSummary costsSummary,
    List<Payment>? payments,
    required Customer customer,
  }) = _ContractDetailsProperties;

  factory ContractDetailsProperties.fromJson(Map<String, dynamic> json) =>
      _$ContractDetailsPropertiesFromJson(json);
}

@freezed
class ContractDetailsResponse with _$ContractDetailsResponse {
  const factory ContractDetailsResponse({
    required ContractDetailsProperties contract,
  }) = _ContractDetailsResponse;

  factory ContractDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContractDetailsResponseFromJson(json);
}