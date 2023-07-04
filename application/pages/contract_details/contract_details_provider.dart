
import '../../../data/Api.dart';
import '../../../domain/models/contract_details/contract_details_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/usecases/contract_details/contract_details_usecases.dart';


final contractDetailsProvider = AutoDisposeFutureProvider.family<ContractDetailsProperties, String>((ref, contractId) async {
  String id = ref.watch(contractIdProvider);
  final response = await ContractDetailsUseCases().getContractDetails(id);
  return response;
});

final contractIdProvider = StateProvider<String>((ref) {
  return '';
});