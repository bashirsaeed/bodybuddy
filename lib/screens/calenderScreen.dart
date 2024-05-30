import 'package:bodybuddy/boxes/boxes.dart';
import 'package:bodybuddy/models/personalData.dart';
import 'package:bodybuddy/screens/focusPart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class calenderScreen extends StatefulWidget {
  const calenderScreen({super.key});

  @override
  State<calenderScreen> createState() => _calenderScreenState();
}

class _calenderScreenState extends State<calenderScreen> {


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
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Text("S",style: GoogleFonts.poppins(color:Colors.white,fontSize:12),)),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Text("M",style: GoogleFonts.poppins(color:Colors.white,fontSize:12),)),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Text("T",style: GoogleFonts.poppins(color:Colors.white,fontSize:12),)),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(

                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Text("W",style: GoogleFonts.poppins(color:Colors.white,fontSize:12),)),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Text("T",style: GoogleFonts.poppins(color:Colors.white,fontSize:12),)),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Text("F",style: GoogleFonts.poppins(color:Colors.white,fontSize:12),)),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Text("S",style: GoogleFonts.poppins(color:Colors.white,fontSize:12),)),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
// Color color1=Colors.white;
// Color color2=Colors.white;
// Color color3=Colors.white;
// Color color4=Colors.white;
// Color color5=Colors.white;
// Color color6=Colors.white;
// Color color7=Colors.white;
// body: SingleChildScrollView(
// child: Column(
// children: [
// SizedBox(height: 80,),
// Center(child: Text("What days would you",style: GoogleFonts.poppins(color:Colors.black,fontSize:25,fontWeight:FontWeight.bold),)),
// Center(child: Text("like to work out?",style: GoogleFonts.poppins(color:Colors.black,fontSize:25,fontWeight:FontWeight.bold),)),
// SizedBox(height: 120,),
// Image.asset("assets/images/callender.png",height: 150,width: 200,),
// SizedBox(height: 10,),
// Center(child: Text("Work out Days",style: GoogleFonts.poppins(color:Colors.black,fontSize:18,fontWeight:FontWeight.bold),)),
// SizedBox(height: 4,),
// Center(child: Text("Per week",style: GoogleFonts.poppins(color:Colors.black,fontSize:15,fontWeight:FontWeight.normal),)),
// SizedBox(height: 30,),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
//
// Container(
// height: 25,
// width: 25,
// decoration: BoxDecoration(
// color: color1,
// borderRadius: BorderRadius.circular(15),
//
// ),
// child: Center(child: InkWell(onTap: (){
// if(color1==Colors.white){
// setState(() {
// color1=Colors.redAccent;
// });
// }
//
// else{
// setState(() {
// color1=Colors.white;
// });
// }
// },child: Text("S",style: GoogleFonts.poppins(color:Colors.black,fontWeight:FontWeight.w500),))),
// ),
// SizedBox(width: 20,),
// Container(
// height: 25,
// width: 25,
// decoration: BoxDecoration(
// color: color2,
// borderRadius: BorderRadius.circular(15),
//
// ),
// child: Center(child: InkWell(onTap: (){
// if(color2==Colors.white){
// setState(() {
// color2=Colors.redAccent;
// });
// }
//
// else{
// setState(() {
// color2=Colors.white;
// });
// }
// },child: Text("M",style: GoogleFonts.poppins(color:Colors.black,fontWeight:FontWeight.w500),))),
// ),
// SizedBox(width: 20,),
// Container(
// height: 25,
// width: 25,
// decoration: BoxDecoration(
// color: color3,
// borderRadius: BorderRadius.circular(15),
//
// ),
// child: Center(child: InkWell(onTap: (){
// if(color3==Colors.white){
// setState(() {
// color3=Colors.redAccent;
// });
// }
//
// else{
// setState(() {
// color3=Colors.white;
// });
// }
// },child: Text("T",style: GoogleFonts.poppins(color:Colors.black,fontWeight:FontWeight.w500),))),
// ),
// SizedBox(width: 20,),
// Container(
// height: 25,
// width: 25,
// decoration: BoxDecoration(
// color: color4,
// borderRadius: BorderRadius.circular(15),
//
// ),
// child: Center(child: InkWell(onTap: (){
// if(color4==Colors.white){
// setState(() {
// color4=Colors.redAccent;
// });
// }
//
// else{
// setState(() {
// color4=Colors.white;
// });
// }
// },child: Text("W",style: GoogleFonts.poppins(color:Colors.black,fontWeight:FontWeight.w500),))),
// ),
// SizedBox(width: 20,),
// Container(
// height: 25,
// width: 25,
// decoration: BoxDecoration(
// color: color5,
// borderRadius: BorderRadius.circular(15),
//
// ),
// child: Center(child: InkWell(onTap: (){
// if(color5==Colors.white){
// setState(() {
// color5=Colors.redAccent;
// });
// }
//
// else{
// setState(() {
// color5=Colors.white;
// });
// }
// },child: Text("T",style: GoogleFonts.poppins(color:Colors.black,fontWeight:FontWeight.w500),))),
// ),
// SizedBox(width: 20,),
// Container(
// height: 25,
// width: 25,
// decoration: BoxDecoration(
// color: color6,
// borderRadius: BorderRadius.circular(15),
//
// ),
// child: Center(child: InkWell(onTap: (){
// if(color6==Colors.white){
// setState(() {
// color6=Colors.redAccent;
// });
// }
//
// else{
// setState(() {
// color6=Colors.white;
// });
// }
// },child: Text("F",style: GoogleFonts.poppins(color:Colors.black,fontWeight:FontWeight.w500),))),
// ),
// SizedBox(width: 20,),
// Container(
// height: 25,
// width: 25,
// decoration: BoxDecoration(
// color: color7,
// borderRadius: BorderRadius.circular(15),
//
// ),
// child: Center(child: InkWell(onTap: (){
// if(color7==Colors.white){
// setState(() {
// color7=Colors.redAccent;
// });
// }
//
// else{
// setState(() {
// color7=Colors.white;
// });
// }
// },child: Text("S",style: GoogleFonts.poppins(color:Colors.black,fontWeight:FontWeight.w500),))),
// ),
// ],
// ),
// SizedBox(height: 80,),
// MaterialButton(height: 40,minWidth: 220,color: Colors.redAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){
// Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>focusPart()));
// },child: Text("Next",style: GoogleFonts.poppins(color: Colors.white,fontSize:18),),),
// ],
// ),
// ),