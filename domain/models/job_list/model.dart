import 'package:freezed_annotation/freezed_annotation.dart';
import '../common_models/model.dart';
part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class JobListResponse with _$JobListResponse {
  const factory JobListResponse({
    required List<JobListProperties> data,
    required int totalCount,
    required int pages,
    required int pageSize,
    required int currentPage,
  }) = _JobListResponse;

  factory JobListResponse.fromJson(Map<String, dynamic> json) =>
      _$JobListResponseFromJson(json);
}

@freezed
class JobListProperties with _$JobListProperties {
  const factory JobListProperties({
    required String id,
    required String created,
    required String tittle,
    required String state,
    required String vehiculeTypeName,
    required double pricePerKm,
    required String pickupDate,
    required double distance,
    required bool prpoposalAlreadyAdded,
    required bool addedToFavorite,
    required Location origin,
    required Location destination,
    required Customer customer,
  }) = _JobListProperties;

  factory JobListProperties.fromJson(Map<String, dynamic> json) =>
      _$JobListPropertiesFromJson(json);
}



