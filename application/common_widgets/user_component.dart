import 'package:flutter/material.dart';
import 'package:super_carga_mobileapp/Application/common_widgets/text_highLight.dart';
import 'package:super_carga_mobileapp/application/common_widgets/profile_pic.dart';


import '../../domain/models/common_models/model.dart';
import '../../utilis.dart';

class UserComponent extends StatelessWidget {
  const UserComponent({
    super.key, required this.customer, required this.pricePerKm,
  });

  final Customer customer;
  final double? pricePerKm;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            ProfilePic(URL: customer.imagePath, size: 70),
            SizedBox(width: 5),
            Column(
              children: [
                Text(customer.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                Text(formatCustomerSpent(customer.spend),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300)),
              ],
            ),
            Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextHighlight(
                        text1: "\$",
                        text2: "${pricePerKm} /km",
                        textSize: 18,
                        fontWeight: FontWeight.normal)
                  ],
                ))
          ]
          ,
        )
    );
  }
}