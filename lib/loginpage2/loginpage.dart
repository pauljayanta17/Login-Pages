import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class homepage extends StatefulWidget {
  static const String routename = '/homepage';
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextStyle textStyle = new TextStyle(
  fontSize: 24,
);
TextStyle loginstyle = new TextStyle(
    fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold);
TextStyle forgotpassword = TextStyle(
    color: Colors.white,
    fontSize: 16,
    letterSpacing: 0.6,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline);
TextStyle logintext = TextStyle(
    color: Colors.white,
    fontSize: 19,
    letterSpacing: 0.6,
    fontWeight: FontWeight.w600
  );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login Page",style: textStyle,),
      //   centerTitle: true,
      //   automaticallyImplyLeading: false,
      //   backgroundColor: Colors.deepPurple,
      //
      // ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black87,
          padding: EdgeInsets.only(top: size.height * 0.05),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Account Login ",
                  style: loginstyle,
                ),
                Padding(padding: EdgeInsets.all(size.height * 0.03)),
                Padding(
                  padding: EdgeInsets.all(size.height * 0.04),
                  child: Form(
                    child: Column(
                      children: [
                        Card(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding:
                                  EdgeInsets.all(size.height * 0.026),
                              fillColor: Colors.white,
                              hintText: "Email Id",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                              //border: OutlineInputBorder(borderRadius: )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Card(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding:
                                  EdgeInsets.all(size.height * 0.026),
                              fillColor: Colors.white,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                              //border: OutlineInputBorder(borderRadius: )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FlatButton(
                              color: Colors.indigo,
                              child: Text(
                                "Login",
                                style: logintext,
                                textAlign: TextAlign.center,
                              ),
                              onPressed: () {
                               
                              },
                            ),
                          ),
                          //color: Colors.orange,
                          height: size.height * 0.0765,
                          width: double.infinity,
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        SignInButton(
                          Buttons.GitHub,
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        SignInButton(
                          Buttons.Google,
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        SignInButton(
                          Buttons.Facebook,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Divider(
                        thickness: 1.6,
                        color: Colors.white,
                        //indent: size.width * 0.06,
                        //endIndent: size.width * 0.06,
                        height: size.height * 0.001,
                      ),
                      Text(
                        "OR",
                        style: TextStyle(color: Colors.white),
                      ),
                      Divider(
                        thickness: 1.6,
                        color: Colors.white,
                        //indent: size.width * 0.06,
                        //endIndent: size.width * 0.06,
                        height: size.height * 0.001,
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: size.height * 0.01)),
                GestureDetector(
                  child: Text("Forgot Password ?", style: forgotpassword),
                  onTap: () {},
                ),
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: size.height * 0.01)),
                GestureDetector(
                  child: Text("Create a new account ?", style: forgotpassword),
                  onTap: () {},
                ),
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: size.height * 0.01)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
