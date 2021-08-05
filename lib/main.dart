
import 'package:flutter/material.dart';
import 'Screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily:"OpenSans",
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff128C7E)
      ),
      home: Homescreen(
      ),
    );
  }
}

