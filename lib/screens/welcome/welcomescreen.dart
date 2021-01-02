import 'dart:io';

import 'package:flutter/material.dart';
import 'package:loginpage/screens/components/body.dart';

class welcomeScreen extends StatefulWidget {
  static const String routename = '/welcomescreen';
  @override
  _welcomeScreenState createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
