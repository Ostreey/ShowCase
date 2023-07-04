import 'package:flutter/material.dart';

import '../../constants.dart';

class SectionDivider extends StatelessWidget {
  final double height;

  const SectionDivider({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: myColors().figmaBlue.shade200, //color of divider
      height: height, //height spacing of divider
      thickness: 1, //thickness of divier line//spacing at the end of divider
    );
  }
}
