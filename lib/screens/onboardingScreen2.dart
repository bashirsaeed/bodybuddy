import 'package:bodybuddy/screens/onboardingScreen3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class onboardingScreen2 extends StatelessWidget {
  const onboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(flex: 1,child:  Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/11.jpg"),fit: BoxFit.cover)
          ),
        ),),
        Expanded(flex: 1,child: Container(color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 38.0),
              child: Text(textAlign: TextAlign.center,"Track your workout and health progress",style: GoogleFonts.poppins(fontSize:30,fontWeight:FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(textAlign: TextAlign.center,"Effortlessly track your fitness journey, log workouts, and monitor health metrics for streamlined progress tracking.",style: GoogleFonts.poppins(fontSize:18,color:Colors.black54),),
            ),

            Center(
              child: SizedBox(width: 200,
                child: MaterialButton(elevation: 0,height: 40,color:Colors.black87,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){
                  Get.to(()=>onboardingScreen3(),transition: Transition.leftToRightWithFade);
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
