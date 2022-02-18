import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar_flutter/rating_bar_flutter.dart';

class Qr extends StatefulWidget {
  const Qr({ Key? key ,}) : super(key: key);

  @override
  _QrState createState() => _QrState();
}

class _QrState extends State<Qr> {

  int no_of_person=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors:  [
          Color(0xffd5b8d7),
          Color(0xff765694)
        ],begin: Alignment.topCenter,end: Alignment.bottomCenter
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(height: 60),
            Center(child: Text("Cart Smashers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32))),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Container(padding:EdgeInsets.all(10),margin:EdgeInsets.fromLTRB(5,0,5,0),child: ClipRRect(child: Image.asset("assets/images/cartsmashers.png"),borderRadius: BorderRadius.circular(60))),
                  SizedBox(height: 20),
                  Text("Description",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,decoration: TextDecoration.underline)),
                  SizedBox(height: 20),
                  Center(child: Text("What fun it is to ride a car uncontrollably! If that is what thoroughly excites you, this corner of WOW is just for you. Get into the car with friends, drive one the formula 1 circuit, smash other vehicles, and enjoy car speeding.",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBarFlutter.readOnly(
                          initialRating: 2,
                          isHalfAllowed: true,
                          halfFilledIcon: Icons.star_half,
                          filledIcon: Icons.star,
                          emptyIcon: Icons.star_border,
                          size: 30,
                          emptyColor: Colors.orange,
                          filledColor: Colors.orange,
                          halfFilledColor: Colors.orange,
                        ),
                        Text("DURATION - 12 MINS",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("No. of Guest(s)",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(shape:CircleBorder(side: BorderSide(color: Colors.black,width: 2)),backgroundColor:Colors.yellow,child:Text("-",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),mini:true,onPressed: (){setState(() {

                        if(no_of_person<=1)
                          no_of_person=1;
                        else
                          no_of_person-=1;
                      });}),
                      Container(
                          decoration:BoxDecoration(color:Colors.white,border: Border.all(color: Colors.black)),
                          child: SizedBox(height:40,width: 50,child: Center(child: Text("$no_of_person",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)))
                      ),
                      FloatingActionButton(shape:CircleBorder(side: BorderSide(color: Colors.black,width: 2)),backgroundColor:Colors.yellow,child:Text("+",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),mini:true,onPressed: (){setState(() {
                        no_of_person+=1;
                      });}),
                    ],
                  ),
                  SizedBox(height: 10),
                  ClipRRect(borderRadius: BorderRadius.circular(10),child: FlatButton.icon(color:Colors.transparent,onPressed: (){
                    //Navigator.push(context,MaterialPageRoute(builder: (context)=> QrCode("$no_of_person")));
                  }, icon: Image.asset("assets/images/getqr.png",height: 40), label: Text("GET QR AND RESERVE RIDE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),)))
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}