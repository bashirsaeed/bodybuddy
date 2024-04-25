import 'package:bodybuddy/screens/onboardingScreen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class onboardingScreen1 extends StatelessWidget {
  const onboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(flex: 1,child:  Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/10.jpg"),fit: BoxFit.cover)
          ),
        ),),
        Expanded(flex: 1,child: Container(color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 38.0,),
            child: Text(textAlign: TextAlign.center,"Find the right workout for yourself",style: GoogleFonts.poppins(fontSize:30,fontWeight:FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(textAlign: TextAlign.center,"Start your fitness journey with personalized workouts. Share key details to tailor exercises to your goals and preferences, unlocking a unique and effective fitness experience.",style: GoogleFonts.poppins(fontSize:18,color:Colors.black54),),
          ),
          Center(
            child: SizedBox(width: 200,
              child: MaterialButton(elevation: 0,height: 40,color:Colors.black87,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){
                 Get.to(()=>onboardingScreen2(),transition: Transition.leftToRightWithFade);
              },child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Next",style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w600,color:Colors.white)),
                  SizedBox(width: 8,),
                  Icon(Icons.arrow_forward_outlined,color: Colors.white,)
                ],
              ),),
            ),
          ),
        ],),)),
      ],),
    );
  }
}
