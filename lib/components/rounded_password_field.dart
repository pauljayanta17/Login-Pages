import 'package:flutter/material.dart';
import 'package:loginpage/components/text_field_container.dart';
import 'package:loginpage/constant.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChnaged;
  const RoundedPasswordField({
    Key key,
    this.onChnaged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChnaged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
        ),
        obscureText: true,
      ),
    );
  }
}
