import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../constants.dart';
import '../../../../utilis.dart';
import '../../../common_widgets/error_message.dart';
import '../../../common_widgets/job_details_component.dart';
import '../../../common_widgets/page_loading_spinner.dart';
import '../../../common_widgets/user_component.dart';
import '../job_details_provider.dart';
import 'bid_widget.dart';

class JobDetailsView extends ConsumerWidget {
  final String jobId;

  JobDetailsView({required this.jobId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jobDetailsAsyncValue = ref.watch(jobDetailsProvider(jobId));

    return jobDetailsAsyncValue.when(data: (jobDetails) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserComponent(customer: jobDetails.customer, pricePerKm: jobDetails.pricePerKm),
          Divider(
            color: myColors().figmaBlue.shade200,
            //color of divider
            height: 10,
            //height spacing of divider
            thickness:
            1, //thickness of divier line//spacing at the end of divider
          ),
          SizedBox(
            height: 10,
          ),
          JobDetailsComponent(
              createdHeader: "Created on",
              created: jobDetails.created,
              tittle: jobDetails.tittle,
              description: jobDetails.description,
              vehicleTypeName: jobDetails.vehiculeTypeName,
              distance: jobDetails.distance,
              cargoWidth: jobDetails.cargo.width,
              cargoHeight: jobDetails.cargo.height,
              requireLoadingCrew: jobDetails
                  .requireLoadingCrew,
              pickupDate: jobDetails.pickupDate,
              originCity: jobDetails.origin.city,
              destinationCity: jobDetails.destination.city,
              cargoLength: jobDetails.cargo.lenght,
              cargoWeight: jobDetails.cargo.weight,
              requireUnloadingCrew:
              jobDetails.requireUnloadingCrew,
              deliveryDate:
              jobDetails.deliveryDate),
          SizedBox(height: 30),
          if (jobDetails.cargo.imagePath !=
              null) // Check if jobDetails.imgPath is not null
            Image.network(jobDetails.cargo.imagePath ?? ''),
          SizedBox(height: 40),
          BidWidget(
              jobId: jobDetails.id,
              proposalAlreadyAdded:
              jobDetails.prpoposalAlreadyAdded),
        ],
      );
    }, loading: () {
      return PageLoadingSpinnerWidget();
    }, error: (error, stackTrace) {
      return ErrorMessage(message: error.toString());
    });
  }
}
