import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class beginner extends StatelessWidget {
  const beginner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Beginner Level",style: GoogleFonts.poppins(color: Colors.white,fontSize: 28),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
        Stack(
        children: [
        Container(child: Image.asset("assets/images/wings.jpg")),
      Positioned(
          bottom:0,right: 0,left: 0,
          child: SizedBox(height: 500,
            width: 100,
            child: Container(
              padding: EdgeInsets.only(left: 8,bottom: 8),
              color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
              child: Align(alignment: Alignment.bottomCenter,child: Text("Pull-Ups",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

              ),



            ),
          ))
      ],
    ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Container(child: Image.asset("assets/images/pu.jpg")),
                Positioned(
                    bottom:0,right: 0,left: 0,
                    child: SizedBox(height: 500,
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,bottom: 8),
                        color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                        child: Align(alignment: Alignment.bottomCenter,child: Text("Push-Ups",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

                        ),



                      ),
                    ))
              ],
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Container(child: Image.asset("assets/images/diamond.webp")),
                Positioned(
                    bottom:0,right: 0,left: 0,
                    child: SizedBox(height: 500,
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,bottom: 8),
                        color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                        child: Align(alignment: Alignment.bottomCenter,child: Text("Tricep Push-Ups",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Container(child: Image.asset("assets/images/cycle.jpg")),
                Positioned(
                    bottom:0,right: 0,left: 0,
                    child: SizedBox(height: 500,
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,bottom: 8),
                        color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                        child: Align(alignment: Alignment.bottomCenter,child: Text("Cycling",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(height: 20,),


          ],
        ),
      ),
    );
  }
}
