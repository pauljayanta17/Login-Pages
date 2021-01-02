import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginpage/constant.dart';
import 'package:loginpage/loginpage2/loginpage.dart';
import 'package:loginpage/screens/welcome/welcomescreen.dart';
import 'package:loginpage/selectpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.grey));
    return MaterialApp(
      title: 'Flutter Auth',
      home: selectpage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
          routes: {
            welcomeScreen.routename:(context)=>welcomeScreen(),
            homepage.routename:(context)=>homepage(),
          },
    );
  }
}
