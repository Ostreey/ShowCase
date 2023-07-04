import 'package:flutter/material.dart';

class RattingStars extends StatelessWidget {
  var ratting;

  RattingStars({required this.ratting});

  @override
  Widget build(BuildContext context) {
    List<Widget> stars = [];
    for (int i = 0; i < 5; i++) {
      if (i < ratting) {
        stars.add(Image.asset("assets/star.png", width: 15));
      } else {
        stars.add(Image.asset("assets/star_blank.png", width: 15));
      }
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: stars,
    );
  }
}