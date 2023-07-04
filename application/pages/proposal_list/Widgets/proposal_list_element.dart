import 'package:super_carga_mobileapp/Application/common_widgets/text_highLight.dart';
import 'package:super_carga_mobileapp/application/pages/proposal_details/proposal_details_page.dart';
import 'package:super_carga_mobileapp/data/Api.dart';
import 'package:super_carga_mobileapp/utilis.dart';
import 'package:flutter/material.dart';
import 'package:super_carga_mobileapp/constants.dart';
import '../../../../domain/models/proposal_list/proposal_list_model.dart';

class ProposalListElement extends StatelessWidget {
  final ProposalListProperties proposalProperties;

  ProposalListElement({required this.proposalProperties});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final dateStyle = TextStyle(
        color: myColors().figmaBlue.shade300, fontSize: 14, fontWeight: FontWeight.w300);
    final titleStyle = TextStyle(color: Colors.white, fontSize: 18);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              settings: RouteSettings(name: '/driver_proposal_details'),
              builder: (context) =>
                  ProposalDetailsPage(proposalId: proposalProperties.id)),
        );
      },
      child: Container(
        //height: size.height/10,
        width: size.width,
        margin: EdgeInsets.fromLTRB(size.width / 30, 0, size.width / 30, 0),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: myColors().figmaBlue.shade100,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(45.0),
                        // Set the border radius to make the image rounded
                        child: Image.network(
                          proposalProperties.customer.imagePath,
                          // Replace with the actual URL of the image you want to load
                          width: 50, // Specify the desired width
                          height: 50, // Specify the desired height
                          fit: BoxFit
                              .cover, // Set the desired fit for the image within the ClipRRect
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(proposalProperties.customer.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Divider(
                    color: myColors().figmaBlue.shade200, //color of divider
                    height: 10, //height spacing of divider
                    thickness:
                    1, //thickness of divier line//spacing at the end of divider
                  ),
                  Text(
                    "Sent on: ${proposalProperties.created.split('T')[0]}",
                    style: dateStyle,
                  ),
                  SizedBox(height: 7),
                  Text(proposalProperties.jobTittle, style: titleStyle),
                  SizedBox(height: 9),
                  Row(
                    children: [
                      TextHighlight(text1: "Status ", text2: proposalProperties.state, textSize: 14, fontWeight: FontWeight.normal),
                    ],
                  ),
                  SizedBox(height: 9),
                  TextHighlight(text1:  "Route: ", text2:  "${proposalProperties.origin.city} to ${proposalProperties.destination.city}", textSize: 12, fontWeight: FontWeight.w300),
                  TextHighlight(text1: "Pick up: date: ", text2: proposalProperties.pickupDate.split('T')[0], textSize: 12, fontWeight: FontWeight.w300)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
