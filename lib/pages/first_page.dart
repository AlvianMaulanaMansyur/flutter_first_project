// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:testawal/pages/home_page.dart';
import 'package:testawal/pages/profile_page.dart';
import 'package:testawal/pages/setting_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //mengupdate index ketika menekan page tertentu
  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //membuat page yang kita select agar sesuai dan menampilkan isinya
  int _selectedIndex = 0;

  //semua page yg kita punya
  final List _pages = [
    //home page
    HomePage(),
    //profile page
    ProfilePage(),
    //settings page
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page")),
      body: _pages[_selectedIndex],
      drawer: Drawer(
        backgroundColor: Colors.blue[50],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 10,
              ),
            ),
            //home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                //ngilangin drawer ketika back to 1st page
                Navigator.pop(context);

                //go to home page
                Navigator.pushNamed(context, '/homepage');
              },
            ),

            //settings page list tile
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I G S"),
              onTap: () {
                //ngilangin drawer ketika back to 1st page
                Navigator.pop(context);

                //go to settings page
                Navigator.pushNamed(context, '/settingpage');
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBottomBar,
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),

          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'PROFILE',
          ),

          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'SETTINGS',
          ),
        ],
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Go to second Page"),
      //     onPressed: () {
      //       //navigate to second page
      //       Navigator.pushNamed(context, '/secondpage');
      //     },
      //   ),
      // ),
    );
  }
}
