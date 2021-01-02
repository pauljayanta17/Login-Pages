import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginpage/components/alreadyhaveanaccount.dart';
import 'package:loginpage/components/roundedButton.dart';
import 'package:loginpage/components/rounded_input_field.dart';
import 'package:loginpage/components/rounded_password_field.dart';
import 'package:loginpage/constant.dart';
import 'package:loginpage/screens/Login/login_screen.dart';
import 'package:loginpage/screens/SignUp/components/background.dart';
import 'package:loginpage/screens/SignUp/components/orDivider.dart';
import 'package:loginpage/screens/SignUp/components/socialicons.dart';
import 'package:loginpage/screens/components/body.dart';
import 'package:loginpage/screens/welcome/welcomescreen.dart';

class SignUpBody extends StatelessWidget {
  final Widget child;

  const SignUpBody({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop:()=> Navigator.push(context, MaterialPageRoute(builder: (c)=>welcomeScreen())),
          child: Background(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Text(
            //   "SIGNUP",
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.28,
            ),
            SizedBox(
              height: size.height * 0.02,
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
              height: size.height * 0.017,
            ),
            RoundedButton(
              color: kPrimaryColor,
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.016,
            ),
            AlreadyHaveAnAccount(
              login: false,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => LoginScreen()));
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcons(
                  iconSrcc: "assets/icons/facebook.svg",
                ),
                SocialIcons(
                  iconSrcc: "assets/icons/google-plus.svg",
                ),
                SocialIcons(
                  iconSrcc: "assets/icons/twitter.svg",
                ),
              ],
            ),
            
          ]),
        ),
      ),
    );
  }
}
