import 'dart:async';

import 'package:bodybuddy/screens/onBoardingScreen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({super.key});

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 4), () {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>onboardingScreen1()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/6.jpg",),fit: BoxFit.cover,
            ),
                    ),
          ),
          Positioned(
            bottom:0,right: 0,left: 0,
            child: Container(padding: EdgeInsets.only(left: 8,bottom: 8),
              color: Colors.white.withOpacity(0.2),width: double.infinity,height: 180,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(alignment: Alignment.topLeft,child: Text("Welcome to ",style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),)),
                  SizedBox(height: 4,),
                  Align(alignment: Alignment.topLeft,child: Row(
                    children: [
                      Text("BODY BUDDY",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 25),),
                      SizedBox(width: 10,),
                      Icon(Icons.sports_gymnastics,color: Colors.green,size: 30,)
                    ],
                  )),
                  Align(alignment: Alignment.topLeft,child: Text("Your Journey to become Stronger",style: GoogleFonts.poppins(color: Colors.white70,fontWeight: FontWeight.w300,fontSize: 16),)),
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
