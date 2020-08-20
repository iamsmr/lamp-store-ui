import 'package:flutter/material.dart';
import 'package:lamp_store/constants.dart';
import 'package:lamp_store/lamp.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor
      ),
      home: LampItem(),
    );
  }
}