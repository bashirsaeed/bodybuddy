import 'package:bodybuddy/screens/homeScreen.dart';
import 'package:bodybuddy/workoutBox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class chestWorkout extends StatelessWidget {
  const chestWorkout({super.key});

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
        title: Text("ChestWorkout",style: GoogleFonts.poppins(color: Colors.white,fontSize: 25),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            gamesBox(name: "Push Ups", pics: "assets/images/pushh.png"),
            gamesBox(name: "Bench Press", pics: "assets/images/benchh.png"),
            gamesBox(name: "Butterfly", pics: "assets/images/butter.png"),
            gamesBox(name: "Crossover", pics: "assets/images/crosse.png"),
            gamesBox(name: "Chest Press", pics: "assets/images/chestpress.png"),
            gamesBox(name: "Cable Fly", pics: "assets/images/cablefly.png"),
            gamesBox(name: "Declined Bench Press", pics: "assets/images/dec.png"),
            gamesBox(name: "Declined Dumbbell Press", pics: "assets/images/decl.png"),
            gamesBox(name: "Declined Dumbbell Fly", pics: "assets/images/decfly.png"),
            gamesBox(name: "Dumbbell Fly", pics: "assets/images/dum.png"),
            gamesBox(name: "Inclined Bench Press", pics: "assets/images/incline.png"),
            gamesBox(name: "Inclined Cable Fly", pics: "assets/images/infly.png"),
            gamesBox(name: "Inclined Dumbbell Press", pics: "assets/images/incl.png"),
            gamesBox(name: "Inclined Dumbbell Fly", pics: "assets/images/inclfly.png"),
            gamesBox(name: "Pull Over", pics: "assets/images/Pullover.png"),

          ],
        ),
      ),
    );
  }
}
