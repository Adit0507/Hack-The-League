import 'dart:async';

import 'package:bharatq/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  startSplashScreenTimer() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigateToPage);
  }

  void navigateToPage() {
    Navigator.pushReplacement(
      (context),
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  void initState() {
    super.initState();

    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]);

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: NetworkImage(
            "https://images.unsplash.com/photo-1500462918059-b1a0cb512f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }
}
