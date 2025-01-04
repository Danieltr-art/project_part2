
import 'package:flutter/material.dart';
import 'package:project_part2/auth/login.dart';
import 'package:project_part2/auth/signUp.dart';
import 'package:project_part2/course.dart';
import 'package:project_part2/personUpdate.dart';
import 'homePage.dart';
import 'introPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "introPage",
      routes: {
        "introPage" : (context) => const introPage(),
        "homePage" : (context) => const homePage(),
        "signUp" : (context) => const signUp(),
        "login" : (context) => const login(),
        "personUpdate" : (context) => const personUpdate(),
      },
    );
  }
}

