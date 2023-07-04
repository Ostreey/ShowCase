import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_carga_mobileapp/application/pages/proposal_details/proposal_details_provider.dart';
import 'package:super_carga_mobileapp/application/pages/proposal_details/widgets/start_contract.dart';


import '../../../../domain/models/proposal_details/proposal_details_model.dart';
import '../../../../constants.dart';
import '../../../../utilis.dart';
import '../../../common_widgets/error_message.dart';
import '../../../common_widgets/job_details_component.dart';
import '../../../common_widgets/page_loading_spinner.dart';
import '../../../common_widgets/text_highLight.dart';
import '../../job_details/widgets/summary.dart';
import '../../job_details/widgets/user_section.dart';

class ProposalDetailsView extends ConsumerWidget {
  final String proposalId;

  ProposalDetailsView({required this.proposalId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final proposalDetailsAsyncValue = ref.watch(
        proposalDetailsProvider(proposalId));

    return proposalDetailsAsyncValue.when(
        data: (proposalDetails){
          return  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserSection(customer: proposalDetails.customer),
              Divider(
                color: myColors().figmaBlue.shade200,
                //color of divider
                height: 10,
                //height spacing of divider
                thickness:
                1, //thickness of divier line//spacing at the end of divider
              ),
              JobDetailsComponent(createdHeader: "Sent on",
                created: proposalDetails.proposalCreated,
                tittle: proposalDetails.tittle,
                description: proposalDetails
                    .description,
                vehicleTypeName: proposalDetails
                    .vehiculeTypeName,
                distance: proposalDetails.distance,
                cargoWidth: proposalDetails.cargo.width,
                cargoHeight: proposalDetails.cargo
                    .height,
                requireLoadingCrew: proposalDetails
                    .requireLoadingCrew,
                pickupDate: proposalDetails.pickupDate,
                originCity: proposalDetails.origin.city,
                destinationCity: proposalDetails
                    .destination.city,
                cargoLength: proposalDetails.cargo
                    .lenght,
                cargoWeight: proposalDetails.cargo
                    .weight,
                requireUnloadingCrew: proposalDetails
                    .requireUnloadingCrew,
                deliveryDate: proposalDetails
                    .deliveryDate,),
              SizedBox(height: 30),
              Summary(proposalDetailsProperties: proposalDetails),
              Container(
                child: proposalDetails.state ==
                    "Accepted" // Check if state is "Accepted"
                    ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              settings: RouteSettings(
                                  name: '/driver_start_contract'),
                              builder: (context) =>
                                  StartContract(
                                      proposalDetails),
                            ),
                          );
                        },
                        child: const Text("Prepare contract"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: myColors().figmaOrange
                              .shade50,
                          minimumSize: Size(80, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
                    : Container(),
              )
            ],
          );
        }, 
        error: (error,stakTrace){
          return ErrorMessage(message: error.toString());
        }, 
        loading: () => PageLoadingSpinnerWidget());
  }
}


