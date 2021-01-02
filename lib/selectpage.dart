import 'package:flutter/material.dart';
import 'package:loginpage/loginpage2/loginpage.dart';
import 'package:loginpage/screens/welcome/welcomescreen.dart';
class selectpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(onPressed: (){
              Navigator.pushNamed(context, welcomeScreen.routename);
            },
            child: Text("Login Page 1"),
            color: Colors.teal,
            ),
            RaisedButton(onPressed: (){
              Navigator.pushNamed(context, homepage.routename);
            },
            child: Text("Login Page 2"),
            color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}