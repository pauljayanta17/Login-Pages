import 'package:flutter/material.dart';
import 'package:loginpage/constant.dart';
class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccount({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(login ? "Don't have an account ? " : "Already have an account ? ",
            style: TextStyle(color: kPrimaryColor)),
        GestureDetector(
            onTap: press,
            child: Text(login ? "Sign Up" : "Sign In",
                style: TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.bold))),
      ],
    );
  }
}
