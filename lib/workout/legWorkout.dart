import 'package:bodybuddy/workoutBox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class legWorkout extends StatelessWidget {
  const legWorkout({super.key});

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
            Text("LegWorkout",style: GoogleFonts.poppins(color: Colors.white,fontSize: 25),),
          ],
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            gamesBox(name: "Cycling", pics: "assets/images/cycll.png"),
            gamesBox(name: "Treadmill", pics: "assets/images/treadmil.png"),
            gamesBox(name: "Calf Raises", pics: "assets/images/calf.png"),
            gamesBox(name: "Dumbbell Squat", pics: "assets/images/dsquat.png"),
            gamesBox(name: "Leg Extension", pics: "assets/images/legex.png"),
            gamesBox(name: "Leg Curl", pics: "assets/images/legcu.png"),
            gamesBox(name: "Leg Press Squat", pics: "assets/images/legsqu.png"),
            gamesBox(name: "Lunges", pics: "assets/images/lunges.png"),
            gamesBox(name: "Leg Press", pics: "assets/images/legss.png"),
            gamesBox(name: "Squats", pics: "assets/images/squat.png"),

          ],
        ),
      ),
    );
  }
}
