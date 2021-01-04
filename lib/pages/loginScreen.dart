import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Page imports

// Widget imports
import 'package:arcanus/widgets/login/emailField.dart';
import 'package:arcanus/widgets/login/passwordField.dart';
import 'package:arcanus/widgets/login/loginButton.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Widget for 'Remember Me'
  bool rememberMe = false;
  Widget buildRememberMe() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: rememberMe,
              checkColor: Colors.blue,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Remember Me',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  // The actual login page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.dark,
            child: GestureDetector(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        // Creating a background
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Color(0x666B7AFD),
                          Color(0x996B7AFD),
                          Color(0xcc6B7AFD),
                          Color(0xff6B7AFD),
                        ])),
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 120,
                      ),
                      // Creating a column for title, widgets/buttons
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Log In Into AniList',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          // Create indent box
                          // Create email widget
                          SizedBox(height: 50),
                          buildEmail(),
                          // Create indent box
                          // Create password widget
                          SizedBox(height: 50),
                          buildPassword(),
                          SizedBox(height: 15),
                          // Create smaller indent box
                          // Create remember me widget
                          buildRememberMe(),
                          // Create login widget/button
                          buildLoginButton(context),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
