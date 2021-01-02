import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginpage/components/alreadyhaveanaccount.dart';
import 'package:loginpage/components/roundedButton.dart';
import 'package:loginpage/components/rounded_input_field.dart';
import 'package:loginpage/components/rounded_password_field.dart';
import 'package:loginpage/components/text_field_container.dart';
import 'package:loginpage/constant.dart';
import 'package:loginpage/screens/Login/components/background.dart';
import 'package:loginpage/screens/SignUp/signup_screen.dart';
import 'package:loginpage/screens/welcome/welcomescreen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: ()=>Navigator.push(context, MaterialPageRoute(builder: (c)=>welcomeScreen())),
          child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   "LOGIN",
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: "Your Email",
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChnaged: (value) {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
              color: kPrimaryColor,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            AlreadyHaveAnAccount(
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (C)=>SignUpScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
