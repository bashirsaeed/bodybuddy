import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class advance extends StatelessWidget {
  const advance({super.key});

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
        title: Text("Advance Level",style: GoogleFonts.poppins(color: Colors.white,fontSize: 28),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Stack(
              children: [
                Container(child: Image.asset("assets/images/rock.webp")),
                Positioned(
                    bottom:0,right: 0,left: 0,
                    child: SizedBox(height: 500,
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,bottom: 8),
                        color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                        child: Align(alignment: Alignment.bottomCenter,child: Text("One Arm DumbBell Row",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

                        ),



                      ),
                    ))
              ],
            ),
            SizedBox(height: 30,),
            Stack(
              children: [
                Container(child: Image.asset("assets/images/pres.jpeg")),
                Positioned(
                    bottom:0,right: 0,left: 0,
                    child: SizedBox(height: 500,
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,bottom: 8),
                        color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                        child: Align(alignment: Alignment.bottomCenter,child: Text("Bench Press",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

                        ),



                      ),
                    ))
              ],
            ),
            SizedBox(height: 30,),
            Stack(
              children: [
                Container(child: Image.asset("assets/images/shoolder.jpg")),
                Positioned(
                    bottom:0,right: 0,left: 0,
                    child: SizedBox(height: 500,
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,bottom: 8),
                        color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                        child: Align(alignment: Alignment.bottomCenter,child: Text("Shoulder Press",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(height: 30,),
            Stack(
              children: [
                Container(child: Image.asset("assets/images/skull.jpg")),
                Positioned(
                    bottom:0,right: 0,left: 0,
                    child: SizedBox(height: 500,
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,bottom: 8),
                        color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                        child: Align(alignment: Alignment.bottomCenter,child: Text("Skull Crush",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(height: 30,),
            Stack(
              children: [
                Container(child: Image.asset("assets/images/biicep.webp")),
                Positioned(
                    bottom:0,right: 0,left: 0,
                    child: SizedBox(height: 500,
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,bottom: 8),
                        color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                        child: Align(alignment: Alignment.bottomCenter,child: Text("Barbell Bicep Crul",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(height: 30,),
            Stack(
              children: [
                Container(child: Image.asset("assets/images/Squat.webp")),
                Positioned(
                    bottom:0,right: 0,left: 0,
                    child: SizedBox(height: 500,
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,bottom: 8),
                        color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                        child: Align(alignment: Alignment.bottomCenter,child: Text("Squats",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

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
