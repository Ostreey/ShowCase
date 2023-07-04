import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_carga_mobileapp/domain/models/job_details/job_details_model.dart';
import 'package:super_carga_mobileapp/domain/models/proposal_details/proposal_details_model.dart';
import 'package:super_carga_mobileapp/domain/models/reviews/reviews_model.dart';
import 'package:super_carga_mobileapp/utilis.dart';

import '../../../data/Api.dart';
import '../../../data/Common/Api.dart';

class ReviewsUseCases {
  Future<List<ReviewPageProperties>> getReviews() async {
    final response = await Repository().reviewPage();
    final reviewsProperties = response.reviewPagePropertiesList;
    return reviewsProperties;
  }
}