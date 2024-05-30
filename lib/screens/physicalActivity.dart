import 'package:bodybuddy/boxes/boxes.dart';
import 'package:bodybuddy/models/personalData.dart';
import 'package:bodybuddy/screens/focusPart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class physicalActivity extends StatefulWidget {
  const physicalActivity({super.key});

  @override
  State<physicalActivity> createState() => _physicalActivityState();
}

class _physicalActivityState extends State<physicalActivity> {
  var level;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Center(child: Text("Physical Activity Level",style: GoogleFonts.poppins(color:Colors.black,fontSize:25,fontWeight:FontWeight.w400),)),
            SizedBox(height: 7,),
            Center(child: Text("Choose your regular activity level This will",style: GoogleFonts.poppins(color:Colors.black,fontSize:15),)),
            Center(child: Text("help us to suggest a better health program",style: GoogleFonts.poppins(color:Colors.black,fontSize:15),)),
            Center(child: Text("for you.",style: GoogleFonts.poppins(color:Colors.black,fontSize:15),)),
            SizedBox(height: 100,),
            Container(
              height: 60,
              width: 270,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Beginner",style: GoogleFonts.poppins(color:Colors.black,fontSize:18,fontWeight:FontWeight.w500),),
                  ),
                  Radio(activeColor:Colors.green,value: 1, groupValue: level, onChanged: (value){
                    setState(() {
                      level=value;

                    });

                  }),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              width: 270,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Intermediate",style: GoogleFonts.poppins(color:Colors.black,fontSize:18,fontWeight:FontWeight.w500),),
                  ),
                  Radio(activeColor:Colors.green,value: 2, groupValue: level, onChanged: (value){
                    setState(() {
                      level=value;

                    });

                  }),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              width: 270,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Advanced",style: GoogleFonts.poppins(color:Colors.black,fontSize:18,fontWeight:FontWeight.w500),),
                  ),
                  Radio(activeColor:Colors.green,value: 3, groupValue: level, onChanged: (value){
                    setState(() {
                      level=value;

                    });

                  }),

                ],
              ),
            ),
            SizedBox(height: 50,),
            MaterialButton(height: 40,minWidth: 220,color: Colors.green,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){
              var physical;
              if(level==1){
                physical="Beginner";
              }
              else if(level==2){
                physical="Intermediate";
              }
              else if(level==3){
                physical="Advanced";
              }
              else{
                physical="No Data";
              }
              final storeData= physicalLevel(level: physical.toString());
              final box=Boxes.getphyscialLevel();
              box.add(storeData);
              storeData.save();
              print(box);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>focusPart()));
            },child: Text("Next",style: GoogleFonts.poppins(color: Colors.white,fontSize:18),),),

          ],
        ),
      ),
    );
  }
}
