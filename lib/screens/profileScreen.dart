import 'package:bodybuddy/boxes/boxes.dart';
import 'package:bodybuddy/models/personalData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

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
        title: Text("My Profile",style: GoogleFonts.poppins(color: Colors.white,fontSize: 30),),
      ),
     body: ListView(
       children: [
         Container( height: MediaQuery.sizeOf(context).height,
           child: ValueListenableBuilder<Box<personalInfoModel>>(
             valueListenable: Boxes.getpersonalData().listenable(),
               builder: (context,box,_){
                 if(box.isEmpty){
                   return Center(child: Text("No Data"),);
                 }
                 else{
                   var data= box.values.toList().cast<personalInfoModel>();
                   return ListView.builder(
                       itemCount: box.length,
                       itemBuilder: (context,index){
                         return Column(
                           children: [
                             SizedBox(height: 40,),
           
                             SizedBox(height: 15,),
                             Text("Let us know you better to help boost",style: GoogleFonts.poppins(color: Colors.black,fontSize: 15),),
                             Text("your workout result",style: GoogleFonts.poppins(color: Colors.black,fontSize: 15),),
                             SizedBox(height: 70,),
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
                                     child: Text("Name:",style: GoogleFonts.poppins(fontSize:20),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(right: 20),
                                     child: Text(data[index].name.toString(),style: GoogleFonts.poppins(fontSize:20),),
                                   ),
                                 ],
                               ),
                             ),
                             SizedBox(height: 30,),
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
                                     child: Text("Age:",style: GoogleFonts.poppins(fontSize:20),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(right: 20),
                                     child: Text(data[index].age.toString(),style: GoogleFonts.poppins(fontSize:20),),
                                   ),
                                 ],
                               ),
                             ),
                             SizedBox(height: 30,),
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
                                     child: Text("Weight In kg:",style: GoogleFonts.poppins(fontSize:20),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(right: 20),
                                     child: Text(data[index].weight.toString(),style: GoogleFonts.poppins(fontSize:20),),
                                   ),
                                 ],
                               ),
                             ),
                             SizedBox(height: 30,),
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
                                     child: Text("Height In foot:",style: GoogleFonts.poppins(fontSize:20),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(right: 20),
                                     child: Text(data[index].height.toString(),style: GoogleFonts.poppins(fontSize:20),),
                                   ),
                                 ],
                               ),
                             ),
                             SizedBox(height: 30,),
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
                                     child: Text("Gender:",style: GoogleFonts.poppins(fontSize:20),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(right: 20),
                                     child: Text(data[index].gender.toString(),style: GoogleFonts.poppins(fontSize:20),),
                                   ),
                                 ],
                               ),
                             ),
                           ],
                         );
                       }
                   );
                 }
           
           
           
               }
           ),
         ),

         SizedBox(height: 20,),

         // SizedBox(height: 20,),



       ],
     ),
    );
  }
}
