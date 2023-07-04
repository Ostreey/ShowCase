import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/Common/Api.dart';
import '../../../../domain/models/common_models/model.dart';
import '../../../common_widgets/profile_pic.dart';

class MyDrawerButton extends StatefulWidget {


  const MyDrawerButton();

  @override
  State<MyDrawerButton> createState() => _MyDrawerButtonState();
}

class _MyDrawerButtonState extends State<MyDrawerButton> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FutureBuilder<DriverDetailsResponse>(
        future: Repository().driverDriverDetails(),
        builder: (context, snapshot) {
          if (snapshot.hasData &&
              snapshot.connectionState == ConnectionState.done) {
            String src = snapshot.data!.driver.imagePath! +
                "?t=${DateTime.now().millisecondsSinceEpoch}";
            debugPrint("FOTO : ${snapshot.data!.driver}");
            String uid = snapshot.data!.driver.id!;
            String userName = snapshot.data!.driver.name!;


            SharedPreferences.getInstance().then((prefs) {
              var preffsConstants;
              prefs.setString(preffsConstants.userName, userName);
              prefs.setString(preffsConstants.myFirebaseId, uid);
              prefs.setString(preffsConstants.profilePicURL, src);
            });
            //TODO CACHED MECHANISM TO CHECK IF DOWNLOADED IMAGE IS THE SAME AS DOWNLOADED and the same on the other profile pics
            debugPrint("Profile pic  uploaded !!" + src);

            return IconButton(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              icon: ProfilePic(URL: src, size: 70),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          }
          else if (snapshot.hasError) {

            return Text(
              '${snapshot.error}',
              style: TextStyle(color: Colors.orange),
            );
          }
          else {
            return ClipRRect(
              borderRadius: BorderRadius.circular(45.0),
              // Set the border radius to make the image rounded
              child: Image(
                image: AssetImage('assets/blank_profilepic.jpg'),
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            );
          }
        },
      ),
    );
  }
}

