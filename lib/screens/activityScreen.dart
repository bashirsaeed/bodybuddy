import 'package:bodybuddy/screens/calenderScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class activityScreen extends StatefulWidget {
  const activityScreen({super.key});

  @override
  State<activityScreen> createState() => _activityScreenState();
}

class _activityScreenState extends State<activityScreen> {
Color color1=Colors.white;
Color color2=Colors.white;
Color color3=Colors.white;
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
                  color: color1,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  )
              ),
             child: Center(child: InkWell(onTap: (){
               if(color1==Colors.white){
                 setState(() {
                   color1=Color.fromRGBO(255, 191, 0, 1);
                 });
               }

               else{
                 setState(() {
                   color1=Colors.white;
                 });
               }
             },child: Text("Beginner",style: GoogleFonts.poppins(color:Colors.black,fontSize:20,fontWeight:FontWeight.w500),))),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              width: 270,
              decoration: BoxDecoration(
                  color: color2,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  )
              ),
              child: Center(child: InkWell(onTap: (){
                if(color2==Colors.white){
                  setState(() {
                    color2=Color.fromRGBO(255, 191, 0, 1);
                  });

                }
                else{
                  setState(() {
                    color2=Colors.white;
                  });
                }
              },
              child: Text("Intermediate",style: GoogleFonts.poppins(color:Colors.black,fontSize:20,fontWeight:FontWeight.w500),))),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              width: 270,
              decoration: BoxDecoration(
                  color: color3,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  )
              ),
              child: Center(child: InkWell(onTap: (){
                if(color3==Colors.white){
                  setState(() {
                    color3=Color.fromRGBO(255, 191, 0, 1);
                  });

                }
                else{
                  setState(() {
                    color3=Colors.white;
                  });
                }
              },child: Text("Advanced",style: GoogleFonts.poppins(color:Colors.black,fontSize:20,fontWeight:FontWeight.w500),))),
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Container(
                 height: 40,
                 width: 100,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     border: Border.all(
                       width: 1,
                       color: Colors.black,
                     )
                 ),
                 child: Center(child: Text("Back",style: GoogleFonts.poppins(color:Colors.black,fontWeight:FontWeight.w500),)),
               ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color:  Color.fromRGBO(255, 191, 0, 1),
                      borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(child: InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>calenderScreen()));
                  },child: Text("Continue",style: GoogleFonts.poppins(color:Colors.black,fontWeight:FontWeight.w500),))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
