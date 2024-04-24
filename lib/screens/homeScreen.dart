import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image(image: AssetImage("assets/images/dumm.png"),height: 50,width: 50,),
           Text("Body Buddy",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 27),),
            SizedBox(width: 50,),
            Icon(Icons.search),
            SizedBox(width: 10,),
            Icon(Icons.bookmark_add),
          ],
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,size: 20,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.black,size: 20,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.black,size: 20,),
            label: 'Profile',
          ),
         

        ],),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 15),
              child: Align(alignment: Alignment.topLeft,child: Row(
                children: [
                  SizedBox(height: 100,),
                  Text("Morning,Member",style: GoogleFonts.aBeeZee(fontSize: 27),),
                  SizedBox(width: 10,),
                  Image(image: AssetImage("assets/images/clapping.png"),height: 30,width: 30,),
                ],
              )),
            ),
            SizedBox(height: 10,),
            Padding(
              padding:  EdgeInsets.only(left: 15),
              child: Align(alignment: Alignment.topLeft,child: Row(
                children: [
                  Text("Featured Workout",style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(width: 110,),
                  Text("See all",style: GoogleFonts.roboto(fontSize: 20,color: Colors.orange,fontWeight: FontWeight.bold),),

                ],
              )),
            ),
            SizedBox(height: 10,),

            Container(
              height: 150,
              width: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 10,),
                 Stack(
                   children: [
                     Image.asset("assets/images/chest.jpg"),
                     Positioned(
                         bottom:0,right: 0,left: 0,
                         child: Container(padding: EdgeInsets.only(left: 8,bottom: 8),
                       color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                       child: Padding(
                         padding: const EdgeInsets.only(top: 10),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Align(alignment: Alignment.topLeft,child: Center(child: Text("Chest Workout ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),))),

                           ],
                         ),
                       ),



                     ))
                   ],
                 ),
                  SizedBox(width: 10,),
                  Stack(
                    children: [
                      Image.asset("assets/images/wings.jpg"),
                      Positioned(
                          bottom:0,right: 0,left: 0,
                          child: Container(padding: EdgeInsets.only(left: 8,bottom: 8),
                            color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(alignment: Alignment.topLeft,child: Center(child: Text("Back Workout ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),))),

                                ],
                              ),
                            ),



                          ))
                    ],
                  ),
                  SizedBox(width: 10,),
                  Stack(
                    children: [
                      Image.asset("assets/images/shoulder.png"),
                      Positioned(
                          bottom:0,right: 0,left: 0,
                          child: Container(padding: EdgeInsets.only(left: 8,bottom: 8),
                            color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(alignment: Alignment.topLeft,child: Center(child: Text("Shoulder Workout ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),))),

                                ],
                              ),
                            ),



                          ))
                    ],
                  ),
                  SizedBox(width: 10,),
                  Stack(
                    children: [
                      Image.asset("assets/images/bicepp.jpg"),
                      Positioned(
                          bottom:0,right: 0,left: 0,
                          child: Container(padding: EdgeInsets.only(left: 8,bottom: 8),
                            color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(alignment: Alignment.topLeft,child: Center(child: Text("Arms Workout ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),))),

                                ],
                              ),
                            ),



                          ))
                    ],
                  ),
                  SizedBox(width: 10,),
                  Stack(
                    children: [
                      Image.asset("assets/images/leg.jpg"),
                      Positioned(
                          bottom:0,right: 0,left: 0,
                          child: Container(padding: EdgeInsets.only(left: 8,bottom: 8),
                            color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(alignment: Alignment.topLeft,child: Center(child: Text("Leg Workout ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),))),

                                ],
                              ),
                            ),



                          ))
                    ],
                  ),
                  SizedBox(width: 10,),
                ],

              ),
            ),
            SizedBox(height: 20,),



            Padding(
              padding:  EdgeInsets.only(left: 15),
              child: Align(alignment: Alignment.topLeft,child: Row(
                children: [
                  Text("Workout Levels",style: GoogleFonts.roboto(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(width: 130,),
                  Text("See all",style: GoogleFonts.roboto(fontSize: 20,color: Colors.orange,fontWeight: FontWeight.bold),),
                ],
              )),
            ),
            Row(
             children: [
               SizedBox(width: 15,),
               MaterialButton(height: 20,minWidth:90,color:Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){

               },child: Text("Beginner",style: TextStyle(color: Colors.black),),),
               SizedBox(width: 15,),
               MaterialButton(height: 20,minWidth:90,color:Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){

               },child: Text("InternnState",style: TextStyle(color: Colors.black),),),
               SizedBox(width: 15,),
               MaterialButton(height: 20,minWidth:90,color:Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){

               },child: Text("Advance",style: TextStyle(color: Colors.black),),),
             ],
            ),
            SizedBox(height: 20,),
            Image.asset("assets/images/background.jpg")
          ],
        ),
      ),
    );
  }
}

