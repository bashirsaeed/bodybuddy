import 'package:bodybuddy/screens/onboardingScreen4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class onboardingScreen3 extends StatelessWidget {
  const onboardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(flex: 1,child:  Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/7.jpg"),fit: BoxFit.cover)
          ),
        ),),
        Expanded(flex: 1,child: Container(color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 38.0,),
              child: Text(textAlign: TextAlign.center,"Wherever you are health is number one",style: GoogleFonts.poppins(fontSize:30,fontWeight:FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(textAlign: TextAlign.center,"Your Journey to Wellness Starts Here! Stronger, Healthier, Happier!. There is no instant way to a healthy life.",style: GoogleFonts.poppins(fontSize:18,color:Colors.black54),),
            ),
            Center(
              child: SizedBox(width: 200,
                child: MaterialButton(elevation: 0,height: 40,color:Colors.black87,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){
                  // Get.to(()=>onboardingScreen4(),transition: Transition.leftToRightWithFade);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>onboardingScreen4()));
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
