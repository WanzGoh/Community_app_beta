import 'package:comunity_app/drawer.dart';
import 'package:comunity_app/pages/home_page.dart';
import 'package:comunity_app/pages/login_Page.dart';
import 'package:comunity_app/start.dart';
import 'package:comunity_app/user.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.redAccent, accentColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),

    );
  }
}



