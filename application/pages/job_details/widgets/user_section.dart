import 'package:flutter/material.dart';



import '../../../../constants.dart';
import '../../../../data/Common/database_service.dart';
import '../../../../domain/models/common_models/model.dart';
import '../../../../domain/models/proposal_details/proposal_details_model.dart';
import '../../../../utilis.dart';
import '../../../common_widgets/profile_pic.dart';

class UserSection extends StatelessWidget {
  const UserSection({
    super.key, required this.customer
  });

  final Customer customer;


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(45.0),
                // Set the border radius to make the image rounded
                child: ProfilePic(
                    URL: customer.imagePath, size: 70)
            ),
            SizedBox(width: 5),
            Column(
              children: [
                Text(customer.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                Text(formatCustomerSpent(
                    customer.spend),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300)),
              ],
            ),
            Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        DatabaseService().redirectToChat(
                            "dwa");
                      },
                      child: const Text("Chat"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: myColors()
                            .figmaOrange.shade50,
                        minimumSize: Size(80, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }
}

