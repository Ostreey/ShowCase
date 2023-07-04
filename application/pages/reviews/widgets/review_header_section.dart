import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../domain/models/common_models/model.dart';
import '../../../common_widgets/profile_pic.dart';

class ReviewHeaderSection extends StatelessWidget {
  DriverDetailsProperties driverDetailsProperties;
  Size size;

  ReviewHeaderSection(
      {required this.driverDetailsProperties, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      child: Column(
        children: [
          Text("Reviews", style: Styles().titleStyle),
          SizedBox(height: 20),
          ProfilePic(URL: driverDetailsProperties.imagePath!, size: 100),
          SizedBox(height: 10),
          Text(driverDetailsProperties.name!,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/star.png",
                width: 15,
              ),
              Text(
                "${driverDetailsProperties.rating} (${driverDetailsProperties.ratedContracts})",
                style: Styles().textStyle,
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
