import 'package:flutter/material.dart';

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
 
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [],
    );
  }
}





































// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   String name = "";
//   bool changeButton = false;

//   final _formKey = GlobalKey<FormState>();
//   // moveToHome(BuildContext context) async {
//   //   if (_formKey.currentState.validate()) {
//   //     setState(() {
//   //       changeButton = true;
//   //     });
//   //     await Future.delayed(Duration(seconds: 1));
//   //     await Navigator.pushNamed(context, MyRoutes.);
//   //     setState(() {
//   //       changeButton = false;
//   //     });
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Stack(
//             children: [
//               Container(
//                 height: MediaQuery.of(context).size.height,
//                 width: MediaQuery.of(context).size.width,
//                 child: Image.asset("assets/images/login.png",
//                     fit: BoxFit.fitWidth),
//               ),
//               SizedBox(
//                 height: 296,
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(
//                   vertical: 296,
//                 ),
//                 child: Column(
//                   children: [
//                     Container(
//                       // padding: EdgeInsets.all(1),
//                       margin: EdgeInsets.symmetric(horizontal: 157),
//                       child: Text(
//                         "Log in",
//                         style: TextStyle(fontSize: 25, color: Colors.black),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: "Enter username",
//                           labelText: "Username",
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: TextFormField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           hintText: "Enter password",
//                           labelText: "Password",
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                       ),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {},
//                       child: Text("Login"),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
