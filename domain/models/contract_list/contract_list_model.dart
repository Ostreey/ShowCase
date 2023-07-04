import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../common_models/model.dart';


part 'contract_list_model.freezed.dart';
part 'contract_list_model.g.dart';

@freezed
class ContractListResponse with _$ContractListResponse {
  const factory ContractListResponse({
    required List<ContractListProperties> data,
    required int totalCount,
    required int pages,
    required int pageSize,
    required int currentPage,
  }) = _ContractListResponse;

  factory ContractListResponse.fromJson(Map<String, dynamic> json) =>
      _$ContractListResponseFromJson(json);
}

@freezed
class ContractListProperties with _$ContractListProperties {
  factory ContractListProperties({
    required String id,
    required String created,
    required String jobTittle,
    required Location origin,
    required Location destination,
    required String state,
    required String stateChanged,
    required String jobId,
    double? rating,
    double? contractValue,
    String? paymentState,
    bool? isInDispute,
  }) = _ContractListProperties;

  factory ContractListProperties.fromJson(Map<String, dynamic> json) =>
      _$ContractListPropertiesFromJson(json);
}

