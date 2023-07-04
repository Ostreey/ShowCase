
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants.dart';
import '../../../domain/models/job_list/model.dart';
import 'package:super_carga_mobileapp/utilis.dart';
import '../../common_widgets/error_message.dart';
import '../../common_widgets/page_loading_spinner.dart';
import 'job_list_provider.dart';
import 'widgets/job_list_element.dart';


class JobListPage extends ConsumerWidget {
  List<JobListProperties> jobPropertiesList = [];
  late int _maxPages;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late ScrollController _scrollController;
    int _page = ref.watch(JobListPaginationProvider);
    final jobListAsyncValue = ref.watch(JobListResponseProvider);

    void _loadMore() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.extentAfter < 500) {
          if (_page < _maxPages) {
            ref.read(JobListPaginationProvider.notifier).state += 1;
          }
        }
      }
    }

    _scrollController = ScrollController()..addListener(_loadMore);

    Widget _buildList(int length) {
      return RefreshIndicator(
        onRefresh: () async {
          jobPropertiesList.clear();
          if (_page > 1) {
            _page = 1;
            ref.invalidate(JobListPaginationProvider);
          } else {
             ref.invalidate(JobListResponseProvider);
          //  check isrefreshing in async value
          }
        },
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                controller: _scrollController,
                itemCount: length,
                itemBuilder: (context, index) {
                  return JobListElement(jobPropertiesList[index]);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(height: 15),
              ),
            ),
          ],
        ),
      );
    }

    if(jobListAsyncValue.isRefreshing){
      return  PageLoadingSpinnerWidget();
    }
    else{
      return jobListAsyncValue.when(
        data: (data) {
          if (data.data.isNotEmpty) {
            jobPropertiesList.addAll(data.data.toList());
            final length = jobPropertiesList.length;
            _maxPages = data.pages;
            return _buildList(length);
          } else {
            return Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Text(
                  "No results",
                  style: Styles().titleStyle,
                ),
              ],
            );
          }
        },
        error: (error, stackTrace) => ErrorMessage(message: error.toString()),
        loading: () {
          if (jobPropertiesList.isNotEmpty) {
            return _buildList(jobPropertiesList.length);
          } else {
            return PageLoadingSpinnerWidget();
          }
        },
      );
    }

  }
}
