import 'package:bharatq/main.dart';
import 'package:bharatq/pages/Maps.dart';
import 'package:bharatq/pages/Profile.dart';
import 'package:bharatq/pages/Qr.dart';
import 'package:bharatq/pages/Search.dart';
import 'package:bharatq/pages/homScreen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeBottomBar extends StatefulWidget {
  @override
  _HomeBottomBarState createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  int index = 2;
  final screens = [
    HomeScreenPage(),
    Profile(),
    Qr(),
    Search(),
    Maps(),
  ];
  final items = <Widget>[
    Icon(
      Icons.home,
      size: 30,
    ),
    Icon(
      Icons.info_outline,
      size: 30,
    ),
    Icon(
      Icons.qr_code,
      size: 30,
    ),
    Icon(
      Icons.map_outlined,
      size: 30,
    ),
    Icon(
      Icons.settings,
      size: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("aap"),
      ),
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.deepPurple,
        backgroundColor: Colors.white,
        height: 60,
        index: index,
        items: items,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
      ),
    );
  }
}
