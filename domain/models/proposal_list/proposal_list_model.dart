import 'package:freezed_annotation/freezed_annotation.dart';

import '../common_models/model.dart';

part 'proposal_list_model.freezed.dart';
part 'proposal_list_model.g.dart';

@freezed
class ProposalListResponse with _$ProposalListResponse {
  const factory ProposalListResponse({
    required List<ProposalListProperties> data,
    required int totalCount,
    required int pages,
    required int pageSize,
    required int currentPage,
  }) = _ProposalListResponse;

  factory ProposalListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProposalListResponseFromJson(json);
}

@freezed
class ProposalListProperties with _$ProposalListProperties {
  const factory ProposalListProperties({
    required String id,
    required String created,
    required String jobId,
    required double pricePerKm,
    required String state,
    required String jobTittle,
    required String pickupDate,
    required Location origin,
    required Location destination,
    required Customer customer,
  }) = _ProposalListProperties;

  factory ProposalListProperties.fromJson(Map<String, dynamic> json) =>
      _$ProposalListPropertiesFromJson(json);
}

