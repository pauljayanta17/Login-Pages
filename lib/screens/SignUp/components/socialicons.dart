import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginpage/constant.dart';

class SocialIcons extends StatelessWidget {
  final String iconSrcc;
  final Function press;
  const SocialIcons({
    Key key,
    this.iconSrcc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: kPrimaryColor),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrcc,
          height: size.height * .025,
          width: size.width * .025,
        ),
      ),
    );
  }
}