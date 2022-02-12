import 'package:flutter/material.dart';
class Search extends StatefulWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Color.fromARGB(255, 175, 76, 150),
      
    );
  }
}