import 'package:flutter/material.dart';
import 'text_highLight.dart';
import '../../constants.dart';

class JobDetailsHightlights extends StatelessWidget {
  final String text1_1;
  final String text1_2;
  final String text2_1;
  final String text2_2;
  final String text3_1;
  final String text3_2;
  final String text4_1;
  final String text4_2;
  final String text5_1;
  final bool loading;
  final String text6_1;
  final String text6_2;
  final MainAxisAlignment mainAxisAlignment;

  JobDetailsHightlights({
    required this.text1_1,
    required this.text1_2,
    required this.text2_1,
    required this.text2_2,
    required this.text3_1,
    required this.text3_2,
    required this.text4_1,
    required this.text4_2,
    required this.text5_1,
    required this.loading,
    required this.text6_1,
    required this.text6_2,
    required this.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    FontWeight fontWeight = FontWeight.normal;
    double size = 14;
    double space = 3;
    
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextHighlight(
              text1: text1_1,
              text2: text1_2,
              textSize: size,
              fontWeight: fontWeight,
            ),
            SizedBox(height: space),
            TextHighlight(text1: text2_1, text2: text2_2, textSize: size, fontWeight: fontWeight),
            SizedBox(height: space),
            TextHighlight(text1: text3_1, text2: text3_2, textSize: size, fontWeight: fontWeight),
            SizedBox(height: space),
            TextHighlight(text1: text4_1, text2: text4_2, textSize: size, fontWeight: fontWeight),
            SizedBox(height: space),
            loading
                ?TextHighlight(text1: text5_1, text2: "Yes", textSize: size, fontWeight: fontWeight)
                : TextHighlight(text1: text5_1, text2: "No", textSize: size, fontWeight: fontWeight),
            SizedBox(height: space),
            TextHighlight(text1: text6_1, text2: text6_2, textSize: size, fontWeight: fontWeight),
          ],
        ),
      ],
    );
  }

}
