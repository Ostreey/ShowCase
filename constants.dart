import 'package:flutter/material.dart';

class preffsConstants {
  static const String myFirebaseId = 'MY_FIREBASE_ID';
  static const String appLogin = 'APP_LOGIN';
  static const String appPassword = 'APP_PASSWORD';
  static const String accessToken = 'accessToken';
  static const String refreshToken = ' refreshToken';
  static const String userName = 'MY_USER_NAME';
  static const String profilePicURL = 'PROFILE_PIC_URL';

}

class myColors{
   MaterialColor figmaBlue = MaterialColor(0xFF181C44, <int, Color>{
    50: Color(0xFF080821),
    100: Color(0xFF181C44),
    200: Color(0xFF5071AA),
    300: Color(0xFF39A1FF),
  },
  );


    MaterialColor figmaOrange = MaterialColor(0xFF181C44, <int, Color>{
     50: Color(0xFFF46300),
   },
   );


    MaterialColor materialFigmaOrange = const MaterialColor(
     0xFFF26A2E, // Primary color value
     const <int, Color>{ // Map of shades
       50: const Color(0xFFFFF3EC),
       100: const Color(0xFFFFE1D6),
       200: const Color(0xFFFFC6B0),
       300: const Color(0xFFFFAC89),
       400: const Color(0xFFFF955C),
       500: const Color(0xFFF26A2E),
       600: const Color(0xFFE75523),
       700: const Color(0xFFD13D17),
       800: const Color(0xFFC1290F),
       900: const Color(0xFFA41807),
     },
   );


}

class Styles {
  final titleStyle = TextStyle(
      color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold);
  final textStyle = TextStyle(color: Colors.white, fontSize: 14);
  final dateStyle = TextStyle(
      color: myColors().figmaBlue.shade300, fontSize: 14, fontWeight: FontWeight.w300);

  final reviewAuthor = TextStyle(
      color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold);

  final chatNameStyle = TextStyle(
      color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold);
}

