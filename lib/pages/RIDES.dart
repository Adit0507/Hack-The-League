import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffd5b8d7),
            Color(0xff765694)
            ],begin: Alignment.topCenter,end: Alignment.bottomCenter
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 30,horizontal: 0),
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0 ),
          child: Column(
            children: [
              ClipRRect(borderRadius:BorderRadius.circular(20),child: Image.asset("assets/images/rides.png")),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch ,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: FlatButton(
                        onPressed: (){
                          Navigator.pop(context,'/RIDES');
                          Navigator.pushNamed(context, '/Qr');
                        },
                        color: Colors.black,
                        child:const Text("Cart Smashers ",textAlign:TextAlign.left,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: FlatButton(
                        onPressed: (){},
                        color: Colors.black,
                        child:const Text("Mega Disko ",textAlign:TextAlign.left,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: FlatButton(
                        onPressed: (){},
                        color: Colors.black,
                        child:const Text("Rocking Roller",textAlign:TextAlign.left,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: FlatButton(
                        onPressed: (){},
                        color: Colors.black,
                        child:const Text("Big Beat",textAlign:TextAlign.left,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: FlatButton(
                        onPressed: (){},
                        color: Colors.black,
                        child:const Text("Boomerango",textAlign:TextAlign.left,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: FlatButton(
                        onPressed: (){},
                        color: Colors.black,
                        child:const Text("The Haunted Mansion",textAlign:TextAlign.left,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: FlatButton(
                        onPressed: (){},
                        color: Colors.black,
                        child:const Text("Ferris Wheel",textAlign:TextAlign.left,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                      ),
                    ),


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
