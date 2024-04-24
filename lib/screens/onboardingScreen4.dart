import 'package:bodybuddy/screens/accountSetup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class onboardingScreen4 extends StatelessWidget {
  const onboardingScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(flex: 1,child:  Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/12.jpg"),fit: BoxFit.cover)
          ),
        ),),
        Expanded(flex: 1,child: Container(color: Colors.white,
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 12,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 38.0,vertical: 25),
                child: Text(textAlign: TextAlign.center,"Track your bites, fuel your health",style: GoogleFonts.poppins(fontSize:30,fontWeight:FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(textAlign: TextAlign.center,"Fuel your health by tracking your bites. Log your meals and snacks to stay on top of your nutrition and wellness goals, making every bite count toward a healthier you.",style: GoogleFonts.poppins(fontSize:18,color:Colors.black54),),
              ),
              SizedBox(height: 40,),
              Center(
                child: SizedBox(width: 200,
                  child: MaterialButton(elevation: 0,height: 40,color:Colors.black87,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){
                    Get.to(()=>accountSetup(),transition: Transition.leftToRightWithFade);
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
            ],),
          ),)),
      ],),
    );
  }
}
