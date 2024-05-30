import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class intermediate extends StatelessWidget {
  const intermediate({super.key});

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
        title: Text("Intermediate Level",style: GoogleFonts.poppins(color: Colors.white,fontSize: 28),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Stack(
              children: [
                Container(child: Image.asset("assets/images/latttt.jpg")),
                Positioned(
                    bottom:0,right: 0,left: 0,
                    child: SizedBox(height: 500,
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,bottom: 8),
                        color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                        child: Align(alignment: Alignment.bottomCenter,child: Text("Lats Pull-Down",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

                        ),



                      ),
                    ))
              ],
            ),
            SizedBox(height: 30,),
            Stack(
              children: [
                Container(child: Image.asset("assets/images/bench.jpg")),
                Positioned(
                    bottom:0,right: 0,left: 0,
                    child: SizedBox(height: 500,
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,bottom: 8),
                        color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                        child: Align(alignment: Alignment.bottomCenter,child: Text("Machine Chest Press",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

                        ),



                      ),
                    ))
              ],
            ),
            SizedBox(height: 30,),
            Stack(
              children: [
                Container(child: Image.asset("assets/images/shoulderm.webp")),
                Positioned(
                    bottom:0,right: 0,left: 0,
                    child: SizedBox(height: 500,
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,bottom: 8),
                        color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                        child: Align(alignment: Alignment.bottomCenter,child: Text("Shoulder Machine Press",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(height: 30,),
            Stack(
              children: [
                Container(child: Image.asset("assets/images/triccep.webp")),
                Positioned(
                    bottom:0,right: 0,left: 0,
                    child: SizedBox(height: 500,
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,bottom: 8),
                        color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                        child: Align(alignment: Alignment.bottomCenter,child: Text("Tricep Push-Down",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(height: 30,),
            Stack(
              children: [
                Container(child: Image.asset("assets/images/biccep.jpg")),
                Positioned(
                    bottom:0,right: 0,left: 0,
                    child: SizedBox(height: 500,
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,bottom: 8),
                        color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                        child: Align(alignment: Alignment.bottomCenter,child: Text("Bicep Machine Curl",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(height: 30,),
            Stack(
              children: [
                Container(child: Image.asset("assets/images/legex.jpg")),
                Positioned(
                    bottom:0,right: 0,left: 0,
                    child: SizedBox(height: 500,
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,bottom: 8),
                        color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
                        child: Align(alignment: Alignment.bottomCenter,child: Text("Leg Extension",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(height: 30,),


          ],
        ),
      ),
    );
  }
}
