import 'package:flutter/material.dart';
import 'package:arcanus/pages/loginScreen.dart';

void main() {
  runApp(Arcanus());
}

class Arcanus extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arcanus',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
