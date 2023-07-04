import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_carga_mobileapp/domain/models/job_details/job_details_model.dart';
import 'package:super_carga_mobileapp/domain/models/proposal_details/proposal_details_model.dart';
import 'package:super_carga_mobileapp/utilis.dart';
import '../../../data/Api.dart';

class ProposalDetailsUseCases {
  Future<ProposalDetailsProperties> getProposalDetails(
      String proposalId) async {
    final response = await DriverRepository().getProposalDetails(proposalId);
    final proposalDetails = response.proposal.copyWith(
      proposalCreated: response.proposal.proposalCreated.split('T')[0],
      pickupDate: response.proposal.pickupDate.split('T')[0],
      deliveryDate: response.proposal.deliveryDate.split('T')[0],
    );
    return proposalDetails;
  }


}