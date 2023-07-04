import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  String title;

  PageTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 20),
        child: Text(title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold)));
  }
}