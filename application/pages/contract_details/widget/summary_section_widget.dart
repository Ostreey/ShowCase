
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../common_widgets/text_highLight.dart';
import '../contract_details_page.dart';

class SummarySectionWidget extends StatelessWidget {
  final ContractDetailsWidget widget;

  const SummarySectionWidget({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Summary",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        Container(
          width: size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                  color: myColors().figmaOrange.shade50.withAlpha(255)),
              color: myColors().figmaBlue.shade200.withOpacity(0.5)),
          padding: EdgeInsets.all(15.0),
          margin: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextHighlight(
                  text1: "Payment status: ",
                  text2: widget.contractDetailsProperties.paymentState,
                  textSize: 17,
                  fontWeight: FontWeight.bold),
              SizedBox(height: 7),
              TextHighlight(
                  text1: "Contract value: ",
                  text2:
                  "\$${widget.contractDetailsProperties.costsSummary.totalPrice}"
                      .toString(),
                  textSize: 17,
                  fontWeight: FontWeight.bold),
              SizedBox(height: 7),
              TextHighlight(
                  text1: "Status: ",
                  text2: widget.contractDetailsProperties.state,
                  textSize: 17,
                  fontWeight: FontWeight.bold),
            ],
          ),
        ),
      ],
    );
  }
}
