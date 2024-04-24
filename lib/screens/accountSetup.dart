import 'package:bodybuddy/screens/homeScreen.dart';
import 'package:bodybuddy/screens/welcomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class accountSetup extends StatefulWidget {
  const accountSetup({super.key});

  @override
  State<accountSetup> createState() => _accountSetupState();
}

class _accountSetupState extends State<accountSetup> {
  var gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/2.jpg"),fit: BoxFit.cover)
            ),
          ),
          Container(height: double.infinity,
            color: Colors.white.withOpacity(0.1),
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 70,),
                  Center(child: Text("Tell Us About Yourself",style: GoogleFonts.bebasNeue(fontSize: 30,fontWeight:FontWeight.w600,color:Colors.black),)),
                  Text(textAlign: TextAlign.center,"To give you a better experience and results we need to know few things about you before letting you in.",style:GoogleFonts.poppins(fontSize: 15,color:Colors.white70), ),
                  SizedBox(height: 50,),
                  Text("Select your Gender",style: GoogleFonts.poppins(color:Colors.white,fontSize:20,fontWeight:FontWeight.bold,),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Radio(activeColor:Colors.white,value: 1, groupValue: gender, onChanged: (value){
                        setState(() {
                          gender=value;

                        });
                      },),
                      SizedBox(width: 10,),
                      Text("Male",style: GoogleFonts.poppins(fontSize:15,color:Colors.white70),),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(activeColor: Colors.white,value: 2, groupValue: gender, onChanged: (value){
                        setState(() {
                         gender= value;
                        });
                      },),
                      SizedBox(width: 10,),
                      Text("Female",style: GoogleFonts.poppins(fontSize:15,color:Colors.white70),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Enter your Name",style: GoogleFonts.poppins(color:Colors.white,fontSize:20,fontWeight:FontWeight.bold),),
                  SizedBox(height: 10,),
                  SizedBox(height: 30,
                    width: 200,
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Colors.white.withOpacity(0.5),
                        filled: true,
                        labelStyle: GoogleFonts.poppins(color: Colors.black,),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, ),

                        ),
                        border: OutlineInputBorder(
                        ),
                      ),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Enter your age",style: GoogleFonts.poppins(color:Colors.white,fontSize:20,fontWeight:FontWeight.bold),),
                  SizedBox(height: 10,),
                  SizedBox(height: 30,
                    width: 200,
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Colors.white.withOpacity(0.5),
                        filled: true,
                        labelStyle: GoogleFonts.poppins(color: Colors.black,),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, ),

                        ),
                        border: OutlineInputBorder(
                        ),
                      ),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(height: 20,),
                  RichText(text: TextSpan(text: "Enter your weight",
                  style:GoogleFonts.poppins(fontSize:20,fontWeight:FontWeight.bold,color:Colors.white),
                  children: [
                    TextSpan(text: " (in kg)",style: GoogleFonts.poppins(fontSize:16,color:Colors.white70),),
                  ]),),
                  SizedBox(height: 10,),
                  SizedBox(height: 30,
                    width: 200,
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Colors.white.withOpacity(0.5),
                        filled: true,
                        labelStyle: GoogleFonts.poppins(color: Colors.black,),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, ),

                        ),
                        border: OutlineInputBorder(
                        ),
                      ),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(height: 20,),
                  RichText(text: TextSpan(text: "Enter your height",
                      style:GoogleFonts.poppins(fontSize:20,fontWeight:FontWeight.bold,color:Colors.white),
                      children: [
                        TextSpan(text: " (in cm)",style: GoogleFonts.poppins(fontSize:16,color:Colors.white70),),
                      ]),),
                  SizedBox(height: 10,),
                  SizedBox(height: 30,
                    width: 200,
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Colors.white.withOpacity(0.5),
                        filled: true,
                        labelStyle: GoogleFonts.aBeeZee(color: Colors.black,),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, ),

                        ),
                        border: OutlineInputBorder(
                        ),
                      ),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Center(
                    child: SizedBox(width: 200,
                      child: MaterialButton(elevation: 0,height: 40,color:Colors.black87,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){
                        Get.offAll(()=>homeScreen(),transition: Transition.leftToRightWithFade);
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

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




