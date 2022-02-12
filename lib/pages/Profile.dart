import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Color.fromARGB(255, 26, 71, 169),
      
    );
  }
}