import 'package:bodybuddy/boxes/boxes.dart';
import 'package:bodybuddy/models/personalData.dart';
import 'package:bodybuddy/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class focusPart extends StatefulWidget {
  const focusPart({super.key});

  @override
  State<focusPart> createState() => _focusPartState();
}

class _focusPartState extends State<focusPart> {
  var body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Center(child: Text("Whats your focus part?",style: GoogleFonts.poppins(color:Colors.black,fontSize:25,fontWeight:FontWeight.bold),)),
            SizedBox(height: 10,),
            Center(child: Text("Focus on your target area and save 25%",style: GoogleFonts.poppins(color:Colors.black,fontSize:15),)),
            Center(child: Text("of your time",style: GoogleFonts.poppins(color:Colors.black,fontSize:15),)),
            SizedBox(height: 20,),
            Row(

              children: [
                Expanded(
                    child: Container(
                      height: 500,
                       width: 200,
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Radio(activeColor:Colors.green,value: 1, groupValue: body, onChanged: (value){
                            setState(() {
                              body=value;

                            });
                          },),
                          SizedBox(width: 10,),
                          Text("Full Body",style: GoogleFonts.poppins(fontSize:20,color:Colors.black,fontWeight:FontWeight.w500),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Radio(activeColor:Colors.green,value: 2, groupValue: body, onChanged: (value){
                            setState(() {
                              body=value;

                            });
                          },),
                          SizedBox(width: 10,),
                          Text("Arm",style: GoogleFonts.poppins(fontSize:20,color:Colors.black,fontWeight:FontWeight.w500),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Radio(activeColor:Colors.green,value: 3, groupValue: body, onChanged: (value){
                            setState(() {
                              body=value;

                            });
                          },),
                          SizedBox(width: 10,),
                          Text("Abs",style: GoogleFonts.poppins(fontSize:20,color:Colors.black,fontWeight:FontWeight.w500),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Radio(activeColor:Colors.green,value: 4, groupValue: body, onChanged: (value){
                            setState(() {
                              body=value;

                            });
                          },),
                          SizedBox(width: 10,),
                          Text("Leg",style: GoogleFonts.poppins(fontSize:20,color:Colors.black,fontWeight:FontWeight.w500),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Radio(activeColor:Colors.green,value: 5, groupValue: body, onChanged: (value){
                            setState(() {
                              body=value;

                            });
                          },),
                          SizedBox(width: 10,),
                          Text("Chest",style: GoogleFonts.poppins(fontSize:20,color:Colors.black,fontWeight:FontWeight.w500),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Radio(activeColor:Colors.green,value: 6, groupValue: body, onChanged: (value){
                            setState(() {
                              body=value;

                            });
                          },),
                          SizedBox(width: 10,),
                          Text("Back",style: GoogleFonts.poppins(fontSize:20,color:Colors.black,fontWeight:FontWeight.w500),),
                        ],
                      ),
                    ],
                  ),


                )
                ),
                Expanded(child: Container(
                  height: 500,
                  width: 100,
                  color: Colors.white,
                  child: Image.asset("assets/images/women.png"),


                ))
              ],
            ),
            SizedBox(height: 10,),
            MaterialButton(height: 40,minWidth: 220,color: Colors.green,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){
              var bodie;
              if(body==1){
                bodie="Full Body";
              }
              else if(body==2){
                bodie="Arms";
              }
              else if(body==3){
                bodie="Abs";
              }
              else if(body==4){
                bodie="Legs";
              }
              else if(body==5){
                bodie="Chest";
              }
              else if(body==6){
                bodie="Back";
              }
              else{
                bodie="No Data";
              }
              final storeData=bodypart(part: bodie.toString());
              final box=Boxes.getbodypart();
              box.add(storeData);
              storeData.save();
              print(box);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homeScreen()));
            },child: Text("Next",style: GoogleFonts.poppins(color: Colors.white,fontSize:18),),),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
