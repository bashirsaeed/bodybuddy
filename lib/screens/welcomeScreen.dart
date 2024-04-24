import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/welcome.jpg",),fit: BoxFit.cover,
            ),
                    ),
          ),
          Positioned(
            bottom:0,right: 0,left: 0,
            child: Container(padding: EdgeInsets.only(left: 8,bottom: 8),
              color: Colors.white.withOpacity(0.4),width: double.infinity,height: 150,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(alignment: Alignment.topLeft,child: Text("Welcome to ",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w300),)),
                  Align(alignment: Alignment.topLeft,child: Row(
                    children: [
                      Text("BODY BUDDY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 28),),
                      SizedBox(width: 10,),
                      Icon(Icons.sports_gymnastics,color: Colors.deepOrange,size: 30,)
                    ],
                  )),
                  Align(alignment: Alignment.topLeft,child: Text("Your Journey to become Stronger",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w200,fontSize: 16),)),
                ],
              ),
            ),
              
            ),
          ),
        ],
      ),
    );
  }
}
