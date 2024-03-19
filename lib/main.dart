// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          backgroundColor: const Color.fromARGB(255, 18, 108, 253),
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout),
            ),
          ],
        ),
        body: ListView(
          children: [
            //1st box
            Container(
              height: 300,
              width: 300,
              color: Colors.deepPurple[300],
            ),
            //2nd box
            Container(
              height: 300,
              width: 300,
              color: Colors.deepPurple[200],
            ),
            //3rd box
            Container(
              height: 300,
              width: 300,
              color: Colors.deepPurple[100],
            ),

          ],
        ),
      ),
    );
  }
}
