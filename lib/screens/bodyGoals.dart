import 'package:bodybuddy/boxes/boxes.dart';
import 'package:bodybuddy/models/personalData.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class bodyGoal extends StatelessWidget {
  const bodyGoal({super.key});

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
        title: Text("Body Goals",style: GoogleFonts.poppins(color: Colors.white,fontSize: 30),),
      ),
      body:
      Container(height: MediaQuery.sizeOf(context).height,
        child: ValueListenableBuilder<Box<targetGoal>>(
            valueListenable: Boxes.gettargetGoal().listenable(),
            builder: (context,box,_){
              if(box.isEmpty){
                return Center(child: Text("No data"),);
              }
              else{
                var data= box.values.toList().cast<targetGoal>();
                return ListView.builder(
                    itemCount: box.length,
                    itemBuilder: (context,index){
                      return Column(
                        children: [
                          Image.asset("assets/images/mus.jpg"),
                          SizedBox(height: 60,),
                          Text("Everyone have different body goals",style: GoogleFonts.poppins(color:Colors.black,fontSize:18),),
                          SizedBox(height: 10,),
                          Text("Get Shredded",style: GoogleFonts.poppins(color:Colors.black,fontSize:18),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100),
                            child: Divider(thickness: 1,color: Colors.black,),
                          ),
                          SizedBox(height: 10,),
                          Text("Gain Weight",style: GoogleFonts.poppins(color:Colors.black,fontSize:18),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100),
                            child: Divider(thickness: 1,color: Colors.black,),
                          ),
                          SizedBox(height: 10,),
                          Text("Building Muscles",style: GoogleFonts.poppins(color:Colors.black,fontSize:18),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100),
                            child: Divider(thickness: 1,color: Colors.black,),
                          ),
                          SizedBox(height: 10,),
                          Text("Get Bulk",style: GoogleFonts.poppins(color:Colors.black,fontSize:18),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100),
                            child: Divider(thickness: 1,color: Colors.black,),
                          ),
                          SizedBox(height: 10,),
                          Text("Lose Weight",style: GoogleFonts.poppins(color:Colors.black,fontSize:18),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100),
                            child: Divider(thickness: 1,color: Colors.black,),
                          ),
                          SizedBox(height: 10,),
                          Text("Others",style: GoogleFonts.poppins(color:Colors.black,fontSize:18),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100),
                            child: Divider(thickness: 1,color: Colors.black,),
                          ),

                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              VerticalDivider(thickness: 1,),
                              Text("My Body goal is : ",style: GoogleFonts.poppins(color:Colors.black,fontSize:18),),
                              Text(data[index].goal.toString(),style: GoogleFonts.poppins(fontSize:18,fontWeight:FontWeight.w500),),

                            ],
                          )






                        ],
                      );
                    }
                );
              }

            }
        ),
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
// child: Text("Goal:",style: GoogleFonts.poppins(fontSize:20),),
// ),
// Padding(
// padding: const EdgeInsets.only(right: 20),
// child: Text(data[index].goal.toString(),style: GoogleFonts.poppins(fontSize:20),),
// ),
// ],
// ),
// ),