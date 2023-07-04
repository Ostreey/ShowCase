
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../domain/models/proposal_details/proposal_details_model.dart';
import '../../../common_widgets/text_highLight.dart';

class Summary extends StatelessWidget {
  const Summary({
    super.key,
    required this.proposalDetailsProperties,
  });

  final ProposalDetailsProperties proposalDetailsProperties;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
              color: myColors().figmaOrange.shade50
                  .withAlpha(255)),
          color: myColors().figmaBlue.shade200),
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextHighlight(text1:  "Your bid: ", text2:  "${proposalDetailsProperties
                  .driversPricePerKm} \$/km", textSize: 17, fontWeight:  FontWeight.bold),
              SizedBox(height: 5),
              TextHighlight(text1: "Status: ", text2:  proposalDetailsProperties.state, textSize: 17, fontWeight:   FontWeight.bold),
            ],
          )
        ],
      ),
    );
  }
}