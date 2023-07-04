

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_carga_mobileapp/utilis.dart';

import '../../../constants.dart';
import '../../../domain/models/contract_list/contract_list_model.dart';
import '../../common_widgets/error_message.dart';
import '../../common_widgets/page_loading_spinner.dart';
import 'contract_list_provider.dart';
import 'widgets/contract_list_element.dart';



class ContractListPage extends ConsumerWidget {
  List<ContractListProperties> contractPropertiesList = [];
  late int _maxPages;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late ScrollController _scrollController;
    int _page = ref.watch(ContractListPaginationProvider);
    final jobListAsyncValue = ref.watch(ContractListResponseProvider);

    void _loadMore() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.extentAfter < 500) {
          if (_page < _maxPages) {
            ref.read(ContractListPaginationProvider.notifier).state += 1;
          }
        }
      }
    }

    _scrollController = ScrollController()..addListener(_loadMore);

    Widget _buildList(int length) {
      return RefreshIndicator(
        onRefresh: () async {
          contractPropertiesList.clear();
          if (_page > 1) {
            _page = 1;
            ref.invalidate(ContractListPaginationProvider);
          } else {
            ref.invalidate(ContractListResponseProvider);
          }
        },
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                controller: _scrollController,
                itemCount: length,
                itemBuilder: (context, index) {
                  return ContractListElement(contractPropertiesList[index]);
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
            contractPropertiesList.addAll(data.data.toList());
            final length = contractPropertiesList.length;
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
          if (contractPropertiesList.isNotEmpty) {
            return _buildList(contractPropertiesList.length);
          } else {
            return PageLoadingSpinnerWidget();
          }
        },
      );
    }

  }
}
