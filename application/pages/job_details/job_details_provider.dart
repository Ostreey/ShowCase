
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/models/job_details/job_details_model.dart';
import '../../../domain/usecases/job_details/job_details_usecases.dart';

final jobDetailsProvider = AutoDisposeFutureProvider.family<JobDetailsProperties, String>((ref, jobId) async {
  final response = await JobDetailsUseCases().getJobDetails(jobId);
  return response;
});



