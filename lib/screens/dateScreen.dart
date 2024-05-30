import 'package:bodybuddy/boxes/boxes.dart';

import 'package:bodybuddy/models/personalData.dart';
import 'package:bodybuddy/screens/focusPart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class dateScreen extends StatefulWidget {
  const dateScreen({super.key});

  @override
  State<dateScreen> createState() => _dateScreenState();
}

class _dateScreenState extends State<dateScreen> {
  var monday;
  var tuseday;
  var wednesday;
  var thrusday;
  var friday;
  var saturday;
  var sunday;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Center(child: Text("What days would you",style: GoogleFonts.poppins(color:Colors.black,fontSize:25,fontWeight:FontWeight.bold),)),
            Center(child: Text("like to work out?",style: GoogleFonts.poppins(color:Colors.black,fontSize:25,fontWeight:FontWeight.bold),)),
            SizedBox(height: 120,),
            Image.asset("assets/images/callender.png",height: 150,width: 200,),
            SizedBox(height: 10,),
            Center(child: Text("Work out Days",style: GoogleFonts.poppins(color:Colors.black,fontSize:18,fontWeight:FontWeight.bold),)),
            SizedBox(height: 4,),
            Center(child: Text("Per week",style: GoogleFonts.poppins(color:Colors.black,fontSize:15,fontWeight:FontWeight.normal),)),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 3,),
                 Column(
                   children: [
                     Radio(activeColor:Colors.red,value: 1, groupValue: sunday, onChanged: (value){

                       setState(() {
                         sunday=value;

                       });
                     },),

                     Text("S",style: GoogleFonts.poppins(fontSize:15,color:Colors.black),),
                   ],
                 ),
               SizedBox(width: 1,),
                Column(
                  children: [
                    Radio(activeColor:Colors.red,value: 2, groupValue: monday, onChanged: (value){

                      setState(() {
                        monday=value;

                      });
                    },),

                    Text("M",style: GoogleFonts.poppins(fontSize:15,color:Colors.black),),
                  ],
                ),
                SizedBox(width: 1,),
                Column(
                  children: [
                    Radio(activeColor:Colors.red,value: 3, groupValue: tuseday, onChanged: (value){

                      setState(() {
                        tuseday=value;

                      });
                    },),

                    Text("T",style: GoogleFonts.poppins(fontSize:15,color:Colors.black),),
                  ],
                ),
                SizedBox(width: 1,),
                Column(
                  children: [
                    Radio(activeColor:Colors.red,value: 4, groupValue: wednesday, onChanged: (value){

                      setState(() {
                        wednesday=value;

                      });
                    },),

                    Text("W",style: GoogleFonts.poppins(fontSize:15,color:Colors.black),),
                  ],
                ),
                SizedBox(width: 1,),
                Column(
                  children: [
                    Radio(activeColor:Colors.red,value: 5, groupValue: thrusday, onChanged: (value){

                      setState(() {
                        thrusday=value;

                      });
                    },),

                    Text("T",style: GoogleFonts.poppins(fontSize:15,color:Colors.black),),
                  ],
                ),
                SizedBox(width: 1,),
                Column(
                  children: [
                    Radio(activeColor:Colors.red,value: 6, groupValue: friday, onChanged: (value){

                      setState(() {
                        friday=value;

                      });
                    },),

                    Text("F",style: GoogleFonts.poppins(fontSize:15,color:Colors.black),),
                  ],
                ),
                SizedBox(width: 1,),
                Column(
                  children: [
                    Radio(activeColor:Colors.red,value: 7, groupValue: saturday, onChanged: (value){

                      setState(() {
                        saturday=value;

                      });
                    },),

                    Text("S",style: GoogleFonts.poppins(fontSize:15,color:Colors.black),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 80,),
            MaterialButton(height: 40,minWidth: 220,color: Colors.redAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){
              var day;
              if(sunday==1){
                day="Sunday";
              }
              else if(monday==2){
                day="Monday";
              }
              else if(tuseday==3){
                day="Tuseday";
              }
              else if(wednesday==4){
                day="Wednesday";
              }
              else if(thrusday==5){
                day="Thrusday";
              }
              else if(friday==6){
                day="Friday";
              }
              else{
                day="Saturday";
              }
              final data=calender(date: day.toString());
              final box=Boxes.getcalender();
              box.add(data);
              data.save();
              print(box);

            },child: Text("Next",style: GoogleFonts.poppins(color: Colors.white,fontSize:18),),),
          ],
        ),
      ),
    );
  }
}
