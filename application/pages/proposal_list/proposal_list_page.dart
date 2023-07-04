
import 'package:super_carga_mobileapp/application/common_widgets/page_loading_spinner.dart';
import 'package:super_carga_mobileapp/application/pages/proposal_list/Widgets/proposal_list_element.dart';
import 'package:super_carga_mobileapp/application/pages/proposal_list/proposal_list_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:super_carga_mobileapp/utilis.dart';

import '../../../constants.dart';
import '../../../domain/models/proposal_list/proposal_list_model.dart';
import '../../common_widgets/error_message.dart';



class ProposalListPage extends ConsumerWidget {
  List<ProposalListProperties> proposalPropertiesList = [];
  late int _maxPages;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late ScrollController _scrollController;
    int _page = ref.watch(ProposalListPaginationProvider);
    final jobListAsyncValue = ref.watch(ProposalListResponseProvider);

    void _loadMore() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.extentAfter < 500) {
          if (_page < _maxPages) {
            ref.read(ProposalListPaginationProvider.notifier).state += 1;
          }
        }
      }
    }

    _scrollController = ScrollController()..addListener(_loadMore);

    Widget _buildList(int length) {
      return RefreshIndicator(
        onRefresh: () async {
          proposalPropertiesList.clear();
          if (_page > 1) {
            _page = 1;
            ref.invalidate(ProposalListPaginationProvider);
          } else {
            ref.invalidate(ProposalListResponseProvider);
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
                  return ProposalListElement(proposalProperties: proposalPropertiesList[index]);
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
            proposalPropertiesList.addAll(data.data.toList());
            final length = proposalPropertiesList.length;
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
          if (proposalPropertiesList.isNotEmpty) {
            return _buildList(proposalPropertiesList.length);
          } else {
            return PageLoadingSpinnerWidget();
          }
        },
      );
    }

  }
}
