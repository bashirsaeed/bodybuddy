import 'package:bodybuddy/screens/bodyGoals.dart';
import 'package:bodybuddy/screens/calenderScreen.dart';
import 'package:bodybuddy/screens/memberLevel.dart';
import 'package:bodybuddy/screens/profileScreen.dart';
import 'package:bodybuddy/screens/targetMuscles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myinfo extends StatelessWidget {
  const myinfo({super.key});

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
        title: Text("About Me",style: GoogleFonts.poppins(color: Colors.white,fontSize: 30),),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
         ListTile(
           leading: Icon(Icons.person,size: 29,),
           title: InkWell(onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>profileScreen()));
           },child: Text("My Profile",style: GoogleFonts.poppins(color:Colors.black,fontSize:20),)),
           trailing: Icon(Icons.arrow_forward_ios_outlined,size: 20,),
         ),
          Divider(thickness: 1,),
          SizedBox(height: 20,),
          ListTile(
            leading: Icon(Icons.radio_button_checked,size: 29,),
            title: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>targetMuscles()));
            },child: Text("Target Area",style: GoogleFonts.poppins(color:Colors.black,fontSize:20),)),
            trailing: Icon(Icons.arrow_forward_ios_outlined,size: 20,),
          ),
          Divider(thickness: 1,),
          SizedBox(height: 20,),
          ListTile(
            leading: Icon(Icons.accessibility_outlined,size: 29,),
            title: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>bodyGoal()));
            },child: Text("Goal",style: GoogleFonts.poppins(color:Colors.black,fontSize:20),)),
            trailing: Icon(Icons.arrow_forward_ios_outlined,size: 20,),
          ),
          Divider(thickness: 1,),
          SizedBox(height: 20,),
          ListTile(
            leading: Icon(Icons.bar_chart,size: 29,),
            title: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>memberLevel()));
            },child: Text("Level Now",style: GoogleFonts.poppins(color:Colors.black,fontSize:20),)),
            trailing: Icon(Icons.arrow_forward_ios_outlined,size: 20,),
          ),
          Divider(thickness: 1,),
          SizedBox(height: 20,),
          ListTile(
            leading: Icon(Icons.calendar_month,size: 29,),
            title: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>calenderScreen()));
            },child: Text("Training Days",style: GoogleFonts.poppins(color:Colors.black,fontSize:20),)),
            trailing: Icon(Icons.arrow_forward_ios_outlined,size: 20,),
          ),
          Divider(thickness: 1,),

        ],
      ),

    );
  }
}
