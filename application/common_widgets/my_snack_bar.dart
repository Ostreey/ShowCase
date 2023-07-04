import 'package:flutter/material.dart';

import '../../constants.dart';

class mySnackbar extends StatelessWidget {

    static void show(BuildContext context, String message) {
    SnackBar snackBar = SnackBar(
      content: Text(message),
      backgroundColor: myColors().figmaOrange.shade50,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Container(); // Return an empty container as this is just a utility class
  }
}