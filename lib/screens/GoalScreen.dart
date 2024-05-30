import 'package:bodybuddy/boxes/boxes.dart';
import 'package:bodybuddy/models/personalData.dart';
import 'package:bodybuddy/screens/physicalActivity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class goalScreen extends StatefulWidget {
  const goalScreen({super.key});

  @override
  State<goalScreen> createState() => _goalScreenState();
}

class _goalScreenState extends State<goalScreen> {
  var body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Center(child: Text("What is your Goal?",style: GoogleFonts.poppins(color:Colors.black,fontSize:28),)),
            Center(child: Text("You can choose your goal here and",style: GoogleFonts.poppins(color:Colors.black,fontSize:15),)),
            Center(child: Text("you can always change it later",style: GoogleFonts.poppins(color:Colors.black,fontSize:15),)),
            SizedBox(height: 50,),
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
                    child: Text("Get Shredded",style: GoogleFonts.poppins(color:Colors.black,fontSize:18,fontWeight:FontWeight.w500),),
                  ),
                  Radio(activeColor:Colors.green,value: 1, groupValue: body, onChanged: (value){
                    setState(() {
                      body=value;

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
                    child: Text("Gain Weight",style: GoogleFonts.poppins(color:Colors.black,fontSize:18,fontWeight:FontWeight.w500),),
                  ),
                  Radio(activeColor:Colors.green,value: 2, groupValue: body, onChanged: (value){
                    setState(() {
                      body=value;

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
                    child: Text("Building Muscles",style: GoogleFonts.poppins(color:Colors.black,fontSize:18,fontWeight:FontWeight.w500),),
                  ),
                  Radio(activeColor:Colors.green,value: 3, groupValue: body, onChanged: (value){
                    setState(() {
                      body=value;

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
                    child: Text("Get Bulk",style: GoogleFonts.poppins(color:Colors.black,fontSize:18,fontWeight:FontWeight.w500),),
                  ),
                  Radio(activeColor:Colors.green,value: 4, groupValue: body, onChanged: (value){
                    setState(() {
                      body=value;

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
                    child: Text("Lose Weight",style: GoogleFonts.poppins(color:Colors.black,fontSize:18,fontWeight:FontWeight.w500),),
                  ),
                  Radio(activeColor:Colors.green,value: 5, groupValue: body, onChanged: (value){
                    setState(() {
                      body=value;

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
                    child: Text("Others",style: GoogleFonts.poppins(color:Colors.black,fontSize:18,fontWeight:FontWeight.w500),),
                  ),
                  Radio(activeColor:Colors.green,value: 6, groupValue: body, onChanged: (value){
                    setState(() {
                      body=value;

                    });
        
                  }),
        
                ],
              ),
            ),
            SizedBox(height: 50,),
            MaterialButton(height: 40,minWidth: 220,color: Colors.green,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){
              var bodie;
              if(body==1){
                bodie="Get Shredded";
              }
              else if(body==2){
                bodie="Gain Weight";
              }
              else if(body==3){
                bodie="Building Muscles";
              }
              else if(body==4){
                bodie="Get Bulk";
              }
              else if(body==5){
                bodie="Lose Weight";
              }
              else {
                bodie="Others";
              }
              final storeData= targetGoal(goal: bodie.toString());
              final box=Boxes.gettargetGoal();
              box.add(storeData);
              storeData.save();
              print(box);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>physicalActivity()));

            },child: Text("Next",style: GoogleFonts.poppins(color: Colors.white,fontSize:18),),),


          ],
        ),
      ),


    );
  }
}
