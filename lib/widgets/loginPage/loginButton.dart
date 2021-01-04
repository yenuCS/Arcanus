import 'package:flutter/material.dart';
import 'package:arcanus/pages/home.dart';

// Widget for login button
Widget buildLoginButton(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () {
        Navigator.pop(context);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      },
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white,
      child: Text(
        'LOGIN',
        style: TextStyle(
            color: Color(0xff6B7AFD),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}
