
import 'package:super_carga_mobileapp/application/pages/main_page/main_page_provider.dart';
import '../../../data/Api.dart';
import '../../../domain/models/job_list/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/usecases/job_list/job_list_usecases.dart';

final JobListResponseProvider = FutureProvider.autoDispose<JobListResponse>((ref) async {
  final  pages = ref.watch(JobListPaginationProvider);
  final tab = ref.watch(MiddleScreenTabProvider);
 final  filtering = ref.watch(searchTextProvider);
  return await JobListUsecases().getJobDetails(tab, pages, filtering);
});

final JobListPaginationProvider = StateProvider.autoDispose<int>((ref) {
  return 1;
});