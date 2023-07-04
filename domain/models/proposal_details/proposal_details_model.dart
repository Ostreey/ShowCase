import 'package:freezed_annotation/freezed_annotation.dart';

import '../common_models/model.dart';
part 'proposal_details_model.freezed.dart';
part 'proposal_details_model.g.dart';

@freezed
class ProposalDetailsProperties with _$ProposalDetailsProperties {
  const factory ProposalDetailsProperties({
    required String id,
    required String proposalCreated,
    required String jobCreated,
    required String vehiculeTypeName,
    required bool requireLoadingCrew,
    required bool requireUnloadingCrew,
    required String description,
    required String tittle,
    required int distance,
    required double jobsPricePerKm,
    required double driversPricePerKm,
    required String state,
    required String pickupDate,
    required String deliveryDate,
    required Cargo cargo,
    required Location origin,
    required Location destination,
    required Customer customer,
    required CostsSummary costsSummary,
  }) = _ProposalDetailsProperties;

  factory ProposalDetailsProperties.fromJson(Map<String, dynamic> json) =>
      _$ProposalDetailsPropertiesFromJson(json);
}



@freezed
class ProposalDetailsResponse with _$ProposalDetailsResponse {
  const factory ProposalDetailsResponse({
    required ProposalDetailsProperties proposal,
  }) = _ProposalDetailsResponse;

  factory ProposalDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProposalDetailsResponseFromJson(json);
}

