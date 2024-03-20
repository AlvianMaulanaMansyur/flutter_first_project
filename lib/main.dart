// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testawal/pages/first_page.dart';
import 'package:testawal/pages/home_page.dart';
import 'package:testawal/pages/second_page.dart';
import 'package:testawal/pages/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/secondpage' :(context) => SecondPage(),
        '/homepage' :(context) => HomePage(),
        '/settingpage' :(context) => SettingPage(),


        },
    );
  }
}
