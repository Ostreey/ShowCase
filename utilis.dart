import 'constants.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:cached_network_image/cached_network_image.dart';


String formatCustomerSpent(int customerSpend) {
  if (customerSpend >= 1000) {
    int formattedSpend = ((customerSpend / 1000).round()) * 1;
    return "\$" + formattedSpend.toString() + 'k+ spent';
  } else {
    return "\$" + customerSpend.toString() + '+ spent';
  }
}

class MySnackbar2 extends StatelessWidget {
  final String message;

  const MySnackbar2({required this.message});

  @override
  Widget build(BuildContext context) {
    SnackBar snackBar = SnackBar(
      content: Text(message),
      backgroundColor: myColors().figmaOrange.shade50,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    return Container(); // Return an empty container as this is just a utility class
  }
}



Future<Map<String, dynamic>> getSharedPrefs(List<String> keys) async {
  try {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, dynamic> values = {};

    for (String key in keys) {
      var value = prefs.getString(key);
      if(value != null)
      values[key] = value;
      else
        values[key] = "";
    }

    return values;
  } catch (e) {
    throw Exception(e);
  }
}



