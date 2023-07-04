

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool obscureText;

  MyTextField({required this.controller, required this.labelText, required this.hintText, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepOrange, width: 1)),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.white),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey)),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
