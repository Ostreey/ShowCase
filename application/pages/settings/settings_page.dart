
import 'package:super_carga_mobileapp/application/common_widgets/page_title.dart';
import 'package:super_carga_mobileapp/application/pages/settings/widgets/drop_down_truck.dart';
import 'package:super_carga_mobileapp/application/pages/settings/widgets/my_icon_button.dart';
import 'package:super_carga_mobileapp/data/Common/Api.dart';
import 'package:super_carga_mobileapp/utilis.dart';
import 'package:flutter/material.dart';
import 'package:super_carga_mobileapp/application/common_widgets/my_snack_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import '../../../constants.dart';
import '../../../data/Api.dart';
import '../../../data/Common/Api.dart';
import '../../../domain/models/common_models/model.dart';
import '../../../domain/models/reviews/reviews_model.dart';
import '../../common_widgets/profile_pic.dart';
import '../../common_widgets/ratting_stars.dart';
import '../reviews/reviews_page.dart';
import '../reviews/widgets/review_list_element.dart';

class FutureBuilderSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DriverDetailsResponse>(
      future: Repository().driverDriverDetails(),
      builder: (context, snapshot) {
        if (snapshot.hasData &&
            snapshot.connectionState == ConnectionState.done) {
          DriverDetailsProperties driverDetailsProperties =
              snapshot.data!.driver;
          driverDetailsProperties = driverDetailsProperties.copyWith(
              imagePath: driverDetailsProperties.imagePath! +
                  "?t=${DateTime.now().millisecondsSinceEpoch}");
          print(snapshot.data!.driver);
          return Settings(driverDetailsProperties: driverDetailsProperties);
        } else if (snapshot.hasError) {
          return Text(
            '${snapshot.error}',
            style: TextStyle(color: Colors.orange),
          );
        }

        // By default, show a loading spinner.
        return Center(
          child: const SizedBox(
            width: 30,
            height: 30,
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}

class Settings extends StatefulWidget {
  DriverDetailsProperties driverDetailsProperties;

  Settings({super.key, required this.driverDetailsProperties});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: myColors().figmaBlue.shade50,
        body: SingleChildScrollView(
          child: Container(
            //height: size.height/10,
            width: size.width,
            margin: EdgeInsets.fromLTRB(size.width / 30, size.height / 30,
                size.width / 30, size.height / 30),
            padding: EdgeInsets.fromLTRB(15, 40, 15, 40),
            decoration: BoxDecoration(
              color: myColors().figmaBlue.shade100,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: <Widget>[
                PageTitle(title: "Account"),
                SizedBox(height: 20),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    ProfilePic(
                        URL: widget.driverDetailsProperties.imagePath!,
                        size: 90),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: GestureDetector(
                          child: Image.asset(
                            "assets/profilepic_edit.png",
                          ),
                          onTap: () async {
                            final ImagePicker picker = ImagePicker();
                            final XFile? image = await picker.pickImage(
                                source: ImageSource.gallery);

                            if (image != null) {
                              // Store the selected image in the state variable
                              changeProfilePicture(image.path)
                                  .then((result) async {
                                mySnackbar.show(
                                    context, "Image changed succesfully!");
                                if (result) {
                                  Repository()
                                      .driverDriverDetails()
                                      .then((value) {
                                    setState(() {
                                      widget.driverDetailsProperties =
                                          value.driver.copyWith(
                                              imagePath: value
                                                      .driver.imagePath! +
                                                  "?t=${DateTime.now().millisecondsSinceEpoch}");
                                      print(widget
                                          .driverDetailsProperties.imagePath);
                                    });
                                  });
                                } else {
                                  mySnackbar.show(
                                      context, "Image change failed!");
                                }
                              });
                              // Do something with the selected image...
                            }
                          },
                        )),
                  ],
                ),

                SizedBox(height: 10),
                Text(widget.driverDetailsProperties.name!,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 2),
                GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/star.png",
                        width: 15,
                      ),
                      Text(
                        "${widget.driverDetailsProperties.rating} (${widget.driverDetailsProperties.ratedContracts})",
                        style: Styles().textStyle,
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReviewsPage(
                                driverDetailsProperties:
                                    widget.driverDetailsProperties)));
                    // MaterialPageRoute(builder: (context) => showContractDetails(size)),
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                textButton("Account type ", "Driver"),
                textButton("Email: ", widget.driverDetailsProperties.email!),
                textButton("Status: ", widget.driverDetailsProperties.state!),
                // textButton("Subscription: ", "Active"),
                Divider(
                  color: myColors().figmaBlue.shade200, //color of divider
                  height: 30, //height spacing of divider
                  thickness:
                      1, //thickness of divier line//spacing at the end of divider
                ),
                Text("Actions", style: Styles().titleStyle),
                SizedBox(
                  height: 25,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyIconButton(
                        text: "Upload driving license",
                        icon: Icons.upload_file),
                    MyIconButton(
                        text: "Change password", icon: Icons.lock),
                    Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: DropdownTruck(
                            vehiculeType: widget
                                .driverDetailsProperties.vehiculeTypeName))
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: myColors().figmaBlue.shade200.withOpacity(0.4),
                      border: Border.all(color: myColors().figmaOrange.shade50),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                            "Balance:   \$${widget.driverDetailsProperties.balance}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Pay out"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: myColors().figmaOrange.shade50,
                            minimumSize: Size(80, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}



List<Widget> buildReviewList(
    int elementsNumber, List<ReviewPageProperties> reviewPagePropertiesList) {
  List<Widget> reviews = [];
  for (int i = 0; i < elementsNumber; i++) {
    //jobs.add(listElement( size, contract[i].id, contract[i].contractValue.toString(), "30", "20"));
    reviews.add(ReviewListElement(
      reviewPageProperties: reviewPagePropertiesList[i],
    ));
    reviews.add(SizedBox(height: 15),);
  }
  return reviews;
}




Widget textButton(String text1, String text2) {
  final textStyle = TextStyle(color: Colors.white, fontSize: 14);
  final orangeTextStyle =
      TextStyle(color: myColors().figmaOrange.shade50, fontSize: 14);
  return GestureDetector(
    onTap: () {
      //   Navigator.push(
      //   context,
      // MaterialPageRoute(builder: (context) => showContractDetails(size)),
    },
    child: Container(
      padding: EdgeInsets.fromLTRB(7, 0, 0, 15),
      child: Row(
        children: [
          Text(
            text1,
            style: orangeTextStyle,
          ),
          SizedBox(width: 5),
          Text(
            text2,
            style: textStyle,
          )
        ],
      ),
    ),
  );
}
