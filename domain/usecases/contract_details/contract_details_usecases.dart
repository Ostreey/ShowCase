import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_carga_mobileapp/domain/models/contract_details/contract_details_model.dart';
import 'package:super_carga_mobileapp/domain/models/job_details/job_details_model.dart';
import 'package:super_carga_mobileapp/domain/models/proposal_details/proposal_details_model.dart';
import 'package:super_carga_mobileapp/utilis.dart';
import '../../../data/Api.dart';

class ContractDetailsUseCases {
  Future<ContractDetailsProperties> getContractDetails(String contractId) async {
    final response = await DriverRepository().getContractDetails(contractId);
    final contractDetails = response.contract.copyWith(
      created: response.contract.created.split('T')[0],
      pickupDate: response.contract.pickupDate.split('T')[0],
      deliveryDate: response.contract.deliveryDate.split('T')[0],
    );
    return contractDetails;
  }
}