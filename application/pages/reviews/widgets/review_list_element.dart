import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../domain/models/reviews/reviews_model.dart';
import '../../../common_widgets/profile_pic.dart';
import '../../../common_widgets/ratting_stars.dart';

class ReviewListElement extends StatelessWidget {
  final ReviewPageProperties reviewPageProperties;

  ReviewListElement({required this.reviewPageProperties});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        margin: EdgeInsets.fromLTRB(size.width / 30, 0, size.width / 30, 0),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: myColors().figmaBlue.shade100,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            ProfilePic(URL: reviewPageProperties.reviewerImagePath, size: 60),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Posted on: ${reviewPageProperties.created}",
                  style: Styles().dateStyle,
                ),
                SizedBox(height: 7),
                Text(
                    "${reviewPageProperties.reviewerName} ${reviewPageProperties.reviewerLastName} ",
                    style: Styles().reviewAuthor),
                SizedBox(height: 9),
                RattingStars(ratting: reviewPageProperties.rating),
                SizedBox(height: 9),
                Text(
                  reviewPageProperties.comment,
                  style: Styles().textStyle,
                )
              ],
            )
          ],
        ));
  }
}
