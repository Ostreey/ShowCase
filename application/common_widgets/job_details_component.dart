import 'package:flutter/material.dart';
import '../../constants.dart';
import 'job_details_highlights.dart';

class JobDetailsComponent extends StatelessWidget {
  var createdHeader;
  var created;
  String description;
  String vehicleTypeName;
  var distance;
  var cargoWidth;
  var cargoHeight;
  bool requireLoadingCrew;
  String pickupDate;
  var originCity;
  var destinationCity;
  var cargoLength;
  var cargoWeight;
  bool requireUnloadingCrew;
  String deliveryDate;
  String tittle;

  JobDetailsComponent(
      {required this.createdHeader,
      required this.created,
      required this.tittle,
      required this.description,
      required this.vehicleTypeName,
      required this.distance,
      required this.cargoWidth,
      required this.cargoHeight,
      required this.requireLoadingCrew,
      required this.pickupDate,
      required this.originCity,
      required this.destinationCity,
      required this.cargoLength,
      required this.cargoWeight,
      required this.requireUnloadingCrew,
      required this.deliveryDate});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${createdHeader}: ${created}",
          style: Styles().dateStyle,
        ),
        SizedBox(height: 7),
        Text(tittle, style: Styles().titleStyle),
        SizedBox(height: 9),
        Text(
          description,
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 12),
        Row(
          children: [
            JobDetailsHightlights(
              text1_1: "Vehicule type: ",
              text1_2: vehicleTypeName,
              text2_1: "Distance: ",
              text2_2: "${distance} km",
              text3_1: "Width: ",
              text3_2: "${cargoWidth} m",
              text4_1: "Height: ",
              text4_2: "${cargoHeight} m",
              text5_1: "Loading: ",
              loading: requireLoadingCrew,
              text6_1: "Pickup: ",
              text6_2: pickupDate,
              mainAxisAlignment: MainAxisAlignment.start,
            ),
            Expanded(
                child: JobDetailsHightlights(
                    text1_1: "",
                    text1_2: "",
                    text2_1:  "Route: ",
                    text2_2: "${originCity} to ${destinationCity}",
                    text3_1:  "Lenght: ",
                    text3_2:      "${cargoLength} m",
                    text4_1:  "Weight: ",
                    text4_2:  "${cargoWeight} kg",
                    text5_1:   "Unloading: ",
                    loading: requireUnloadingCrew,
                    text6_1:  "Delivery: ",
                    text6_2: deliveryDate,
                    mainAxisAlignment: MainAxisAlignment.spaceAround))
          ],
        ),
      ],
    );
  }
}
