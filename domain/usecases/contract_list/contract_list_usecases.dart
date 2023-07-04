
import 'package:super_carga_mobileapp/domain/models/job_list/model.dart';

import '../../../data/Api.dart';
import '../../models/common_models/model.dart';
import '../../models/contract_list/contract_list_model.dart';

class ContractListUsecases {
  Future<ContractListResponse> getContractDetails(int tab, int page, Filtering filtering) async {
    final response = await DriverRepository().getContractList(tab, page, filtering);
    ContractListResponse contractListResponse = response.copyWith(
        data: response.data.map((jobProperties) => jobProperties.copyWith(
          created: jobProperties.created.split('T')[0],
        )).toList()
    );
    return contractListResponse;
  }
}