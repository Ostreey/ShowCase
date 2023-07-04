
import 'package:super_carga_mobileapp/application/pages/main_page/main_page_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/models/proposal_list/proposal_list_model.dart';
import '../../../domain/usecases/proposal_list/proposal_list_usecases.dart';

final ProposalListResponseProvider = FutureProvider.autoDispose<ProposalListResponse>((ref) async {
  final  pages = ref.watch(ProposalListPaginationProvider);
  final tab = ref.watch(MiddleScreenTabProvider);
  return await ProposalListUsecases().getProposalDetails(tab, pages);
});

final ProposalListPaginationProvider = StateProvider.autoDispose<int>((ref) {
  return 1;
});