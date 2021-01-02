import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginpage/constant.dart';
import 'package:loginpage/screens/Login/login_screen.dart';
import 'package:loginpage/screens/SignUp/signup_screen.dart';
import 'package:loginpage/screens/components/background.dart';
import 'package:loginpage/components/roundedButton.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WELCOME TO EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * .05,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (c)=>LoginScreen()));
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: KPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (c)=>SignUpScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
