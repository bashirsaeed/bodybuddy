import 'package:bodybuddy/workoutBox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class absWorkout extends StatelessWidget {
  const absWorkout({super.key});

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
            Text("AbsWorkout",style: GoogleFonts.poppins(color: Colors.white,fontSize: 25),),
          ],
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            gamesBox(name: "Abdomen Crunches", pics: "assets/images/abond.png"),
            gamesBox(name: "Ball Plank", pics: "assets/images/ballplank.png"),
            gamesBox(name: "Crunches", pics: "assets/images/crunch.png"),
            gamesBox(name: "Leg Raises", pics: "assets/images/legraise.png"),
            gamesBox(name: "Plank", pics: "assets/images/bl.png"),
            gamesBox(name: "Plank Pilates", pics: "assets/images/pl.png"),
            gamesBox(name: "Seated Abs Machine", pics: "assets/images/seatabs.png"),
            gamesBox(name: "Standing Leg Raises", pics: "assets/images/led.png"),
            gamesBox(name: "Situps", pics: "assets/images/situp.png"),

          ],
        ),
      ),
    );
  }
}
