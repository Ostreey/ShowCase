import 'package:flutter/material.dart';
import 'package:super_carga_mobileapp/application/pages/job_details/widgets/job_details_view.dart';
import 'package:super_carga_mobileapp/constants.dart';
import 'package:super_carga_mobileapp/utilis.dart';

import '../../common_widgets/page_title.dart';



class JobDetailsPage extends StatelessWidget {
  String jobId;

  JobDetailsPage({required this.jobId});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: myColors().figmaBlue.shade50,
        body: SingleChildScrollView(
            child: Column(
              children: [
                PageTitle(title: "Job details"),
                Container(
                  width: size.width,
                  margin: EdgeInsets.symmetric(
                      vertical: size.height / 30, horizontal: size.width / 30),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: myColors().figmaBlue.shade100,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: JobDetailsView(jobId: jobId)
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

