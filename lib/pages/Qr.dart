import 'package:flutter/material.dart';
class Qr extends StatefulWidget {
  const Qr({ Key? key }) : super(key: key);

  @override
  _QrState createState() => _QrState();
}

class _QrState extends State<Qr> {
  @override
  Widget build(BuildContext context) {
   return Container(
      height: 300,
      width: 300,
      color: Color.fromARGB(255, 12, 61, 14),
      
    );
  }
}