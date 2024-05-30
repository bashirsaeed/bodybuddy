import 'package:bodybuddy/boxes/boxes.dart';
import 'package:bodybuddy/models/personalData.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class trainingDays extends StatelessWidget {
  const trainingDays({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Training Days",style: GoogleFonts.poppins(color: Colors.white,fontSize: 30),),
      ),
      body:  ValueListenableBuilder<Box<calender>>(
          valueListenable: Boxes.getcalender().listenable(),
          builder: (context,box,_){
            var data= box.values.toList().cast<calender>();
            return ListView.builder(
                itemCount: box.length,
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      SizedBox(height: 20,),
                      Image.asset("assets/images/callender.png",height: 200,width: 200,),
                      SizedBox(height: 20,),
                      Container(
                        height: 70,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("day:",style: GoogleFonts.poppins(fontSize:20),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(data[index].date.toString(),style: GoogleFonts.poppins(fontSize:20),),
                            ),
                          ],
                        ),
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
