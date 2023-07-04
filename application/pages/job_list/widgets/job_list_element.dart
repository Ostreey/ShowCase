import 'package:flutter/material.dart';
import 'package:super_carga_mobileapp/Application/common_widgets/text_highLight.dart';

import '../../../../domain/models/job_list/model.dart';
import '../../../../constants.dart';
import '../../../../data/Api.dart';
import '../../../../domain/usecases/job_list/job_list_usecases.dart';
import '../../job_details/job_details_page.dart';

class JobListElement extends StatefulWidget {
  JobListProperties jobListProperties;

  JobListElement(this.jobListProperties);

  @override
  _JobListElementState createState() => _JobListElementState();
}

class _JobListElementState extends State<JobListElement> {
  bool _addedToFavorite = false;

  @override
  void initState() {
    super.initState();
    _addedToFavorite = widget.jobListProperties.addedToFavorite;
  }

  void _addToFavorite(String jobId) {
    JobListUsecases().addJobFavourites(jobId).then((state) {
      setState(() {
        _addedToFavorite = state;
      });
    }).catchError((error) {
      debugPrint("Error while adding to favorite: $error");
    });
  }

  void _removeToFavorite(String jobId) {
    JobListUsecases().removeJobFavourites(jobId).then((state) {
      setState(() {
        _addedToFavorite = state;
      });
    }).catchError((error) {
      debugPrint("Error while adding to favorite: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final dateStyle = TextStyle(
        color: myColors().figmaBlue.shade300,
        fontSize: 14,
        fontWeight: FontWeight.w300);
    final titleStyle = TextStyle(color: Colors.white, fontSize: 18);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              settings: RouteSettings(name: '/job_details'),
              builder: (context) =>
                  JobDetailsPage(jobId: widget.jobListProperties.id)),
        );
      },
      child: Container(
        //height: size.height/10,
        width: size.width,
        margin: EdgeInsets.fromLTRB(size.width / 25, 0, size.width / 25, 0),
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
                          widget.jobListProperties.customer.imagePath,
                          // Replace with the actual URL of the image you want to load
                          width: 50, // Specify the desired width
                          height: 50, // Specify the desired height
                          fit: BoxFit
                              .cover, // Set the desired fit for the image within the ClipRRect
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(widget.jobListProperties.customer.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (!_addedToFavorite)
                              _addToFavorite(widget.jobListProperties.id);
                            else
                              _removeToFavorite(widget.jobListProperties.id);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                _addedToFavorite
                                    ? "assets/fav_filled.png"
                                    : "assets/fav_empty.png",
                                height: 25,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: myColors().figmaBlue.shade200, //color of divider
                    height: 10, //height spacing of divider
                    thickness:
                    1, //thickness of divier line//spacing at the end of divider
                  ),
                  Row(
                    children: [
                      Text(
                        "Created on: ${widget.jobListProperties.created} ",
                        style: dateStyle,
                      ),
                      Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              if (widget.jobListProperties.prpoposalAlreadyAdded)
                                Image.asset("assets/proposal_sent.png", width: 100)
                            ],
                          ))
                    ],
                  ),
                  SizedBox(height: 7),
                  Text(widget.jobListProperties.tittle, style: titleStyle),
                  SizedBox(height: 9),
                  Row(
                    children: [
                      TextHighlight(
                          text1: "Fixed price: ",
                          text2: "${widget.jobListProperties.pricePerKm}\$/km",
                          textSize: 14,
                          fontWeight: FontWeight.normal),
                    ],
                  ),
                  SizedBox(height: 9),
                  Row(
                    children: <Widget>[
                      TextHighlight(
                          text1: "Pickup: ",
                          text2:
                          widget.jobListProperties.pickupDate.split('T')[0],
                          textSize: 12,
                          fontWeight: FontWeight.w300),
                      SizedBox(width: 20),
                      TextHighlight(
                          text1: "Vehicule type: ",
                          text2: widget.jobListProperties.vehiculeTypeName,
                          textSize: 12,
                          fontWeight: FontWeight.w300),
                    ],
                  ),
                  SizedBox(height: 3),
                  TextHighlight(
                      text1: "Route: ",
                      text2:
                      "${widget.jobListProperties.origin.city} to ${widget.jobListProperties.destination.city}",
                      textSize: 12,
                      fontWeight: FontWeight.w300)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

