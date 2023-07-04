import 'package:freezed_annotation/freezed_annotation.dart';


class ReviewPageProperties {
  final String reviewerImagePath;
  final String reviewerName;
  final String reviewerLastName;
  final String created;
  var rating;
  final String comment;

  ReviewPageProperties({
    required this.reviewerImagePath,
    required this.reviewerName,
    required this.reviewerLastName,
    required this.created,
    required this.rating,
    required this.comment,
  });
}

class ReviewPageData {
  final List<ReviewPageProperties> reviewPagePropertiesList;

  ReviewPageData({required this.reviewPagePropertiesList});

  factory ReviewPageData.fromJson(Map<String, dynamic> json) {
    var data = json["data"];
    List<ReviewPageProperties> reviewPagePropertiesList = [];

    for (var reviewPagePropertiesJson in data) {
      reviewPagePropertiesList.add(ReviewPageProperties(
          reviewerImagePath: reviewPagePropertiesJson["reviewerImagePath"],
          reviewerName: reviewPagePropertiesJson["reviewerName"],
          reviewerLastName: reviewPagePropertiesJson["reviewerLastName"],
          created: reviewPagePropertiesJson['created'].split('T')[0],
          rating: reviewPagePropertiesJson["rating"],
          comment: reviewPagePropertiesJson["comment"]));
    }

    return ReviewPageData(reviewPagePropertiesList: reviewPagePropertiesList);
  }
}
