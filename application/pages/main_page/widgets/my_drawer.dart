import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../constants.dart';
import '../../../../navigator_global.dart';

class MyDrawer extends StatefulWidget {
  final Function() updateMainSreen;
  var profilePicURL;

  MyDrawer({required this.updateMainSreen});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final listileStyle = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: myColors().figmaBlue.shade100,
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              // border:
              //   Border(bottom: BorderSide(color: orange.shade50, width: 1.0)),
              //  color: mycolor.shade50,
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/logo.png",
                  scale: 1.1,
                ),
                Text("Driver",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          ListTile(
            leading: Image.asset(
              "assets/settings.png",
              width: 25,
            ),
            title: Text('Settings', style: listileStyle),
            onTap: () {
              Scaffold.of(context).closeDrawer();
              Navigator.pushNamed(context, '/settings').then((value) {
                widget.updateMainSreen();
              });
            },
          ),
          ListTile(
            leading: Image.asset(
              "assets/logout.png",
              width: 25,
            ),
            title: Text('Logout', style: listileStyle),
            onTap: () {
              SharedPreferences.getInstance().then((prefs) {
                prefs.setString(preffsConstants.appLogin, "");
                prefs.setString(preffsConstants.appPassword, "");
              });
              GlobalNavigator.mySnackbar("You have been logged out!");
              GlobalNavigator.logOut();
            },
          ),
          ListTile(
            leading: Image.asset(
              "assets/help.png",
              width: 25,
            ),
            title: Text('Help & Support', style: listileStyle),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
