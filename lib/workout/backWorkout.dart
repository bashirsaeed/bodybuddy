import 'package:bodybuddy/workoutBox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class backWorkout extends StatelessWidget {
  const backWorkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 2,
        toolbarHeight: 60,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("BackWorkout",style: GoogleFonts.poppins(color: Colors.white,fontSize: 25),),
          ],
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            gamesBox(name: "Pullups", pics: "assets/images/pulups.png"),
            gamesBox(name: "Bent Over Rows", pics: "assets/images/bentrow.png"),
            gamesBox(name: "Close Grip TBar", pics: "assets/images/tbar.png"),
            gamesBox(name: "Chean Ups", pics: "assets/images/cheanup.png"),
            gamesBox(name: "DeadLift", pics: "assets/images/deadlift.png"),
            gamesBox(name: "Lat Pulldown", pics: "assets/images/latss.png"),
            gamesBox(name: "Lats Machine", pics: "assets/images/latma.png"),
            gamesBox(name: "Lats Pushdown", pics: "assets/images/la.png"),
            gamesBox(name: "One Arm Dumbbell", pics: "assets/images/onearm.png"),
            gamesBox(name: "Reverse Grip Pull down", pics: "assets/images/revgrip.png"),
            gamesBox(name: "Seated Cable", pics: "assets/images/seated.png"),
          ],
        ),
      ),

    );
  }
}
