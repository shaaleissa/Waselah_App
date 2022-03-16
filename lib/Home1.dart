import 'package:application/Map_.dart';
import 'package:application/More.dart';
import 'package:flutter/material.dart';


import 'HomePage.dart';
import 'WelcomePage.dart';
import 'Profile.dart';

class Home1 extends StatefulWidget {
  @override
  MainHome createState() => MainHome();
}

class MainHome extends State<Home1> {
  final screens = [
    HomePage(),
    Map_(),
    Profile(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: const Color(0xff666a86)),
          BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Map',
              backgroundColor: const Color(0xff666a86)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: const Color(0xff666a86)),
          
        ],
      ),
    );
  }
}
