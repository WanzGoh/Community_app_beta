
import 'package:comunity_app/start.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.redAccent, accentColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Start(),


    );
  }
}



