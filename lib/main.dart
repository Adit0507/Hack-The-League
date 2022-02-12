import 'package:bharatq/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      
    );
  }
}
