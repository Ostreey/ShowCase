import '../../../data/Api.dart';
import '../../models/proposal_list/proposal_list_model.dart';

class ProposalListUsecases {
  Future<ProposalListResponse> getProposalDetails(int tab, int pages) async {
    final response = await DriverRepository().getProposalList(tab,  pages );
    ProposalListResponse proposalListResponseList = response.copyWith(
        data: response.data.map((jobProperties) => jobProperties.copyWith(
          created: jobProperties.created.split('T')[0],
          pickupDate: jobProperties.pickupDate.split('T')[0],
        )).toList()
    );
    return proposalListResponseList;
  }
}