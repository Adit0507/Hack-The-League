import 'package:bharatq/main.dart';
import 'package:bharatq/pages/Profile.dart';
import 'package:bharatq/pages/Qr.dart';
import 'package:bharatq/pages/Search.dart';
import 'package:bharatq/pages/homScreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    HomeScreenPage(),
    Profile(),
    Qr(),
    Search(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        backgroundColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.white70,
        selectedItemColor: Colors.white,
        iconSize: 20,
        selectedFontSize: 15,
        unselectedFontSize: 13,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Study',
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: 'Books',
            // backgroundColor: Colors.deepOrangeAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video_sharp),
            label: 'Videos',
            // backgroundColor: Colors.deepPurpleAccent,
          ),
        ],
      ),
    );
  }
}
