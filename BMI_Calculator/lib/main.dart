import 'package:first_app/Login_screen.dart';
import 'package:first_app/users_screen.dart';
import 'package:flutter/material.dart';
import 'BMI Calculator.dart';
import 'counter_screen.dart';
import 'home_screen.dart';
import 'messenger_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}