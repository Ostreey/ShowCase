import 'package:flutter/material.dart';
import 'package:super_carga_mobileapp/application/pages/reviews/widgets/review_header_section.dart';


import '../../../constants.dart';
import '../../../domain/models/common_models/model.dart';
import '../../../domain/models/reviews/reviews_model.dart';
import '../../../domain/usecases/reviews/reviews_usecases.dart';
import '../Settings/settings_page.dart';


class ReviewsPage extends StatefulWidget {
  DriverDetailsProperties driverDetailsProperties;

  ReviewsPage({required this.driverDetailsProperties});

  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: myColors().figmaBlue.shade50,
      body: SafeArea(
          child: Column(
            children: [
              ReviewHeaderSection(
                  driverDetailsProperties: widget.driverDetailsProperties,
                  size: size),
              Expanded(child: FutureBuilderReviewsList())
            ],
          )),
    );
  }
}


Widget FutureBuilderReviewsList() {
  return FutureBuilder(
      future: ReviewsUseCases().getReviews(),
      builder: (context, snapshot) {
        if (snapshot.hasData &&
            snapshot.connectionState == ConnectionState.done) {
          List<ReviewPageProperties> reviewPagePropertiesList = [];
          reviewPagePropertiesList = snapshot.data!;
          int lenght = snapshot.data!.length;

          return ListView(
            children: [
              ...buildReviewList(lenght, reviewPagePropertiesList),
            ],
          );
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
      });
}

