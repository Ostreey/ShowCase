
import '../../../domain/models/proposal_details/proposal_details_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/usecases/proposal_details/proposal_details_usecases.dart';

final proposalDetailsProvider = AutoDisposeFutureProvider.family<ProposalDetailsProperties, String>((ref, proposalId) async {
  final response = await ProposalDetailsUseCases().getProposalDetails(proposalId);
  return response;
});
