import 'package:dhairay_thakur/my_home_page.dart';
// import 'package:dhairay_thakur/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey[700],
        accentColor: Color(0xffB8FB3C),
        primaryColorDark: Colors.black,
        fontFamily: "Cabin",
      ),
      home: MyHomePage(),
    );
  }
}
