import 'package:bodybuddy/boxes/boxes.dart';
import 'package:bodybuddy/models/personalData.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class targetMuscles extends StatelessWidget {
  const targetMuscles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Target muscles",style: GoogleFonts.poppins(color: Colors.white,fontSize: 30),),
      ),
     body:
      ValueListenableBuilder<Box<bodypart>>(
          valueListenable: Boxes.getbodypart().listenable(),
          builder: (context,box,_){
            var data= box.values.toList().cast<bodypart>();
            return ListView.builder(
                itemCount: box.length,
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Image.asset("assets/images/anatomy.webp"),
                      SizedBox(height: 40,),
                      Text("Everyone focus on different body muscles",style: GoogleFonts.poppins(color:Colors.black,fontSize:15,fontWeight:FontWeight.w500),),
                      SizedBox(height: 10,),
                      Text("Full Body",style: GoogleFonts.poppins(color:Colors.black,fontSize:15,),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 140),
                        child: Divider(thickness: 1,color: Colors.black,),
                      ),
                      SizedBox(height: 10,),
                      Text("Arm",style: GoogleFonts.poppins(color:Colors.black,fontSize:15),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 140),
                        child: Divider(thickness: 1,color: Colors.black,),
                      ),
                      SizedBox(height: 10,),
                      Text("Abs",style: GoogleFonts.poppins(color:Colors.black,fontSize:15),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 140),
                        child: Divider(thickness: 1,color: Colors.black,),
                      ),
                      SizedBox(height: 10,),
                      Text("Leg",style: GoogleFonts.poppins(color:Colors.black,fontSize:15),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 140),
                        child: Divider(thickness: 1,color: Colors.black,),
                      ),
                      SizedBox(height: 10,),
                      Text("Chest",style: GoogleFonts.poppins(color:Colors.black,fontSize:15),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 140),
                        child: Divider(thickness: 1,color: Colors.black,),
                      ),
                      SizedBox(height: 10,),
                      Text("Back",style: GoogleFonts.poppins(color:Colors.black,fontSize:15),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 140),
                        child: Divider(thickness: 1,color: Colors.black,),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          VerticalDivider(thickness: 1,),
                          Text("My Target muscle is :  ",style: GoogleFonts.poppins(color:Colors.black,fontSize:15),),
                          Text(data[index].part.toString(),style: GoogleFonts.poppins(fontSize:15,fontWeight:FontWeight.w500),),

                        ],
                      ),

                    ],
                  );
                }
            );
          }
      ),

    );
  }
}
// Container(
// height: 70,
// width: 280,
// decoration: BoxDecoration(
// color: Colors.grey.withOpacity(0.3),
// borderRadius: BorderRadius.circular(20),
// ),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Padding(
// padding: const EdgeInsets.only(left: 20),
// child: Text("Target Muscle:",style: GoogleFonts.poppins(fontSize:20),),
// ),
// Padding(
// padding: const EdgeInsets.only(right: 20),
// child: Text(data[index].part.toString(),style: GoogleFonts.poppins(fontSize:20),),
// ),
//
// ],
// ),
// ),