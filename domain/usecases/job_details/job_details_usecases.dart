import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_carga_mobileapp/domain/models/job_details/job_details_model.dart';
import 'package:super_carga_mobileapp/utilis.dart';
import '../../../data/Api.dart';

class JobDetailsUseCases {
  Future<JobDetailsProperties> getJobDetails(String jobId) async {
    final response = await DriverRepository().getJobDetails(jobId);
    final jobDetails = response.job.copyWith(
      created: response.job.created.split('T')[0],
      pickupDate: response.job.pickupDate.split('T')[0],
      deliveryDate: response.job.deliveryDate.split('T')[0],
    );
    return jobDetails;
  }
  Future<bool> sendProposalForJob(String jobId, String pricePerKm) async {
    try {
      final response = await DriverRepository().postProposalForJob(
          jobId, pricePerKm);
   print("USECASE ");
      return true;
    } catch (e) {
      print("USECASE WRONG");
      return false;
    }
  }
}