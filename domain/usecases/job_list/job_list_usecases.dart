
import 'package:super_carga_mobileapp/domain/models/job_list/model.dart';


import '../../../data/Api.dart';
import '../../models/common_models/model.dart';

class JobListUsecases {
  Future<JobListResponse> getJobDetails(int tab, int pages, Filtering filtering) async {
    final response = await DriverRepository().getJobList(tab,  pages, filtering);
   JobListResponse jobListResponse = response.copyWith(
     data: response.data.map((jobProperties) => jobProperties.copyWith(
       created: jobProperties.created.split('T')[0],
       pickupDate: jobProperties.pickupDate.split('T')[0],
     )).toList()
   );
    return jobListResponse;
  }

  Future<bool> removeJobFavourites(String jobId) async {
    try {
      final response = await DriverRepository().postRemoveJobFavourites(jobId);
      print(response);
      return false;
    } catch (e) {
      return true;
    }
  }

  Future<bool> addJobFavourites(String jobId) async {
    try {
      final response = await DriverRepository().postAddJobFavourites(jobId);
      print(response);
      return true;
    } catch (e) {
      return false;
    }
  }
}