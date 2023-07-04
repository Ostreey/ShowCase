

import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../../../domain/models/contract_list/contract_list_model.dart';

import '../../../domain/usecases/contract_list/contract_list_usecases.dart';
import '../main_page/main_page_provider.dart';

final ContractListResponseProvider = FutureProvider.autoDispose<ContractListResponse>((ref) async {
  final  pages = ref.watch(ContractListPaginationProvider);
  final tab = ref.watch(MiddleScreenTabProvider);
  final  filtering = ref.watch(searchTextProvider);
  return await ContractListUsecases().getContractDetails(tab, pages, filtering);
});

final ContractListPaginationProvider = StateProvider.autoDispose<int>((ref) {
  return 1;
});