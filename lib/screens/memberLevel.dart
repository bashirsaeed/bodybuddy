import 'package:bodybuddy/boxes/boxes.dart';
import 'package:bodybuddy/models/personalData.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

class memberLevel extends StatelessWidget {
  const memberLevel({super.key});

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
        title: Text("Training Level",style: GoogleFonts.poppins(color: Colors.white,fontSize: 30),),
      ),
      body: ValueListenableBuilder<Box<physicalLevel>>(
          valueListenable: Boxes.getphyscialLevel().listenable(),
          builder: (context,box,_){
            var data= box.values.toList().cast<physicalLevel>();
            return ListView.builder(
                itemCount: box.length,
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Image.asset("assets/images/background.jpg"),
                      SizedBox(height: 80,),
                      Text("There are three level of trainings",style: GoogleFonts.poppins(color:Colors.black,fontSize:20),),

                      SizedBox(height: 10,),
                      Text("Beginner",style: GoogleFonts.poppins(color:Colors.black,fontSize:20),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100),
                        child: Divider(thickness: 1,color: Colors.black,),
                      ),
                      SizedBox(height: 10,),
                      Text("Intermediate",style: GoogleFonts.poppins(color:Colors.black,fontSize:20),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100),
                        child: Divider(thickness: 1,color: Colors.black,),
                      ),
                      SizedBox(height: 10,),
                      Text("Advanced",style: GoogleFonts.poppins(color:Colors.black,fontSize:20),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100),
                        child: Divider(thickness: 1,color: Colors.black,),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          VerticalDivider(thickness: 1,),
                          Text("My Level is : ",style: GoogleFonts.poppins(color:Colors.black,fontSize:20),),
                          Text(data[index].level.toString(),style: GoogleFonts.poppins(fontSize:20,fontWeight:FontWeight.w500),),

                        ],
                      )
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
// child: Text("Level:",style: GoogleFonts.poppins(fontSize:20),),
// ),
// Padding(
// padding: const EdgeInsets.only(right: 20),

// ),
// ],
// ),
// ),