import 'package:flutter/material.dart';
import '../../../constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
          primarySwatch: Colors.blue, backgroundColor: myColors().figmaBlue.shade50),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColors().figmaBlue.shade50,
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 40 ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              height: 300,
              decoration: BoxDecoration(
                  color: myColors().figmaBlue.shade100,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: myColors().figmaOrange.shade50, width: 1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      //handle tap effect
                    },
                    child: Container(
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                          color: myColors().figmaBlue.shade200,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text('Im driver looking for job',
                          style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      //handle tap effect
                    },
                    child: Container(
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                          color: myColors().figmaBlue.shade200,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text('Im client looking for transportation' , style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
