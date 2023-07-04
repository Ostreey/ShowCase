
import 'package:flutter/material.dart';
import 'package:super_carga_mobileapp/application/pages/main_page/widgets/middle_screen_content.dart';
import 'package:super_carga_mobileapp/application/pages/main_page/widgets/my_bottom_nav_bar.dart';
import 'package:super_carga_mobileapp/application/pages/main_page/widgets/my_drawer.dart';
import 'package:super_carga_mobileapp/application/pages/main_page/widgets/my_drawer_button.dart';

import '../../../constants.dart';
import 'widgets/search_box.dart';

class DriverPanel extends StatefulWidget {
  const DriverPanel({super.key});

  @override
  State<DriverPanel> createState() => _DriverPanelState();
}

class _DriverPanelState extends State<DriverPanel> {

  int _numberOfElements = 10;
  bool textTab = false;


  @override
  void initState() {
    super.initState();
  }



  void _refreshScreen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {


    return WillPopScope(
      onWillPop: () async{
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: myColors().figmaBlue.shade50,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: myColors().figmaBlue.shade50,
          title: SearchBox(),
          actions: <Widget>[
            MyDrawerButton(),
          ],
        ),
        body: Center(
          child: MiddleScreenContent(),
        ),
        drawer: MyDrawer(
          updateMainSreen: _refreshScreen,
        ),
        bottomNavigationBar: MyBottomNavBar(),
      ) ,
    );
  }
}
