
import 'dart:async';
import 'package:super_carga_mobileapp/application/common_widgets/my_snack_bar.dart';
import 'package:flutter/material.dart';

import 'package:super_carga_mobileapp/utilis.dart';

import '../../../../constants.dart';
import '../../../../data/Api.dart';
import '../../../../domain/usecases/job_details/job_details_usecases.dart';

class BidWidget extends StatefulWidget {
  final String jobId;
  final bool proposalAlreadyAdded;

  BidWidget({required this.jobId, required this.proposalAlreadyAdded});

  @override
  _BidWidgetState createState() => _BidWidgetState();
}

class _BidWidgetState extends State<BidWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller
        .dispose(); // Dispose the TextEditingController when widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: !widget.proposalAlreadyAdded,
        child: Column(
          children: [
            Container(
              height: 40,
              child: TextField(
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.start,
                controller: _controller,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  hintText: "eg. 2.83\$/km",
                  labelText: "Place bid",
                  labelStyle: TextStyle(color: myColors().figmaOrange.shade50),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.monetization_on_rounded,
                        color: myColors().figmaOrange.shade50),
                  ),
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: myColors().figmaOrange.shade50),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                JobDetailsUseCases().sendProposalForJob(widget.jobId, _controller.text).then((state) {
                  if (state) {
                    mySnackbar.show(context, "Proposal sent!");
                    Timer(Duration(seconds: 1), () {
                      Navigator.pop(context);
                    });
                  } else {
                    mySnackbar.show(context, "Error while sending!");

                  }
                });
              },
              child: const Text("Send"),
              style: ElevatedButton.styleFrom(
                backgroundColor: myColors().figmaOrange.shade50,
                minimumSize: Size(80, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            )
          ],
        ),
        replacement: Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text("Proposal already sent for this job !",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        ));
  }
}