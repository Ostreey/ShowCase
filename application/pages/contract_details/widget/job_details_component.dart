import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:super_carga_mobileapp/application/pages/main_page/main_page_provider.dart';

import '../../../../constants.dart';
import '../../../../domain/models/contract_details/contract_details_model.dart';

import '../../../../utilis.dart';
import '../../../common_widgets/job_details_highlights.dart';
import '../../../common_widgets/ratting_stars.dart';
import '../contract_details_page.dart';

class JobDetailsComponent extends ConsumerWidget {
  const JobDetailsComponent({
    super.key,
    required this.contractDetailsProperties,
  });

  final ContractDetailsProperties contractDetailsProperties;



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int tab = ref.watch(MiddleScreenTabProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              children: [
                Text(
                  "Started on: ${contractDetailsProperties.created.split('T')[0]}",
                  style: Styles().dateStyle,
                ),
                if (contractDetailsProperties.state == "Finished") ...[
                  Text(
                    "Finished on: ${contractDetailsProperties.stateChanged.split('T')[0]}",
                    style: Styles().dateStyle,
                  )
                ],
              ],
            ),
            tab == 2
                ? Expanded(
                child: RattingStars(
                    ratting: contractDetailsProperties.rating))
                : Container()
          ],
        ),
        SizedBox(height: 7),
        Text(contractDetailsProperties.tittle, style: Styles().titleStyle),
        SizedBox(height: 9),
        Text(
          contractDetailsProperties.description,
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 12),
        Row(
          children: [
            JobDetailsHightlights(
              text1_1: "Vehicule type: ",
              text1_2: contractDetailsProperties.vehiculeTypeName,
              text2_1: "Distance: ",
              text2_2: "${contractDetailsProperties.distance} km",
              text3_1: "Width: ",
              text3_2: "${contractDetailsProperties.cargo.width} m",
              text4_1: "Height: ",
              text4_2: "${contractDetailsProperties.cargo.height} m",
              text5_1: "Loading: ",
              loading: contractDetailsProperties.requireLoadingCrew,
              text6_1: "Pickup: ",
              text6_2:
              contractDetailsProperties.pickupDate.split('T')[0],
              mainAxisAlignment: MainAxisAlignment.start,
            ),
            Expanded(
                child: JobDetailsHightlights(
                    text1_1: "",
                    text1_2: "",
                    text2_1: "Route: ",
                    text2_2:
                    "${contractDetailsProperties.origin.city} to ${contractDetailsProperties.destination.city}",
                    text3_1: "Lenght: ",
                    text3_2:
                    "${contractDetailsProperties.cargo.lenght} m",
                    text4_1: "Weight: ",
                    text4_2:
                    "${contractDetailsProperties.cargo.weight} kg",
                    text5_1: "Unloading: ",
                    loading:
                    contractDetailsProperties.requireUnloadingCrew,
                    text6_1: "Delivery: ",
                    text6_2: contractDetailsProperties.deliveryDate
                        .split('T')[0],
                    mainAxisAlignment: MainAxisAlignment.spaceAround))
          ],
        ),
        SizedBox(height: 30),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: contractDetailsProperties.cargo.imagePath != null
              ? Image.network(
            contractDetailsProperties.cargo.imagePath ?? '',
          )
              : null,
        ),
      ],
    );
  }
}
