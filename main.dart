
import 'application/pages/Settings/settings_page.dart';
import 'application/pages/main_page/main_page.dart';
import 'constants.dart';
import 'domain/models/common_models/model.dart';
import 'navigator_global.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';

import 'utilis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'application/pages/login/login.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(ProviderScope(
    child: MyApp(),
  ));
}


class ScreenState extends ChangeNotifier {
  int selectedScreen = 0;

  void updateSelectedScreen(int index) {
    selectedScreen = index;
   // notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          backgroundColor: myColors().figmaBlue.shade50,
          textTheme: TextTheme(
              headline1: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 15))),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => Login(),
        '/driverPanel': (context) => const DriverPanel(),
        '/settings': (context) =>   FutureBuilderSettings(),
      },
      navigatorKey: navigatorKey,

      //  home: DriverPanel(),
    );
  }
}



