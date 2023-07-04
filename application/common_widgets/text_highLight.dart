import 'package:flutter/material.dart';

import '../../constants.dart';

class TextHighlight extends StatelessWidget {
  final String text1;
  final String text2;
  final double textSize;
  final FontWeight fontWeight;

  TextHighlight({
    required this.text1,
    required this.text2,
    required this.textSize,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    final highlithsStyleOrange = TextStyle(
      color: myColors().figmaOrange.shade50,
      fontSize: textSize,
      fontWeight: fontWeight,
    );
    final highlithsStyleWhite = TextStyle(
      color: Colors.white,
      fontSize: textSize,
      fontWeight: fontWeight,
    );

    return Text.rich(
      TextSpan(children: [
        TextSpan(text: text1, style: highlithsStyleOrange),
        TextSpan(text: text2, style: highlithsStyleWhite),
      ]),
    );
  }
}
