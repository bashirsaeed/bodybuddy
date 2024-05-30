import 'package:bodybuddy/workoutBox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class shoulderWorkout extends StatelessWidget {
  const shoulderWorkout({super.key});

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
            Text("ShoulderWorkout",style: GoogleFonts.poppins(color: Colors.white,fontSize: 25),),
          ],
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            gamesBox(name: "Back Deltoid", pics: "assets/images/backdel.png"),
            gamesBox(name: "Back Rod", pics: "assets/images/backrod.png"),
            gamesBox(name: "Bend Back Delt Raise", pics: "assets/images/bend.png"),
            gamesBox(name: "Barbell Front Raise", pics: "assets/images/barbel.png"),
            gamesBox(name: "Cable Delt Raise", pics: "assets/images/cableraise.png"),
            gamesBox(name: "Dumbbell Press", pics: "assets/images/du.png"),
            gamesBox(name: " Seated Rear Delt Raise", pics: "assets/images/del.png"),
            gamesBox(name: "Front Deltoid", pics: "assets/images/fronts.png"),
            gamesBox(name: "Rear Delt Raise", pics: "assets/images/rear.png"),
            gamesBox(name: "Miltry Press", pics: "assets/images/press.png"),
            gamesBox(name: "Machine  Rear Delt Raise", pics: "assets/images/middle.png"),
            gamesBox(name: "Shoulder Press", pics: "assets/images/shoulderpress.png"),
            gamesBox(name: "Shrugs", pics: "assets/images/shrugs.png"),
            gamesBox(name: "Up Right", pics: "assets/images/Up.png"),
          ],
        ),
      ),
    );
  }
}
