import 'constants.dart';
import 'package:flutter/material.dart';
import 'main.dart';


class GlobalNavigator {
  static showAlertDialog(String text) {
    showDialog(
      barrierDismissible: false,
      context: navigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(text),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
  static void mySnackbar(String message) {
    SnackBar snackBar = SnackBar(
      content: Text(message),
      backgroundColor: myColors().figmaOrange.shade50,
    );

    ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(snackBar);
  }

  static void logOut(){
    Navigator.of(navigatorKey.currentContext!).popUntil(ModalRoute.withName("/"));
  }

}
