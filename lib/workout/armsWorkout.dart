import 'package:bodybuddy/workoutBox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class armsWorkout extends StatelessWidget {
  const armsWorkout({super.key});

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
            Text("ArmsWorkout",style: GoogleFonts.poppins(color: Colors.white,fontSize: 25),),
          ],
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            gamesBox(name: "Barbell Curl", pics: "assets/images/curl.png"),
            gamesBox(name: "Bicep Dumbbell Curl", pics: "assets/images/bicepcurl.png"),
            gamesBox(name: "Bicep Curl Bench", pics: "assets/images/bicepcu.png"),
            gamesBox(name: "Closed Grip CUrl", pics: "assets/images/closebarb.png"),
            gamesBox(name: "EZ Bar Preacher Curl", pics: "assets/images/preacher.png"),
            gamesBox(name: "Hammer Curl ", pics: "assets/images/ham.png"),
            gamesBox(name: "Machine Bicep Curl", pics: "assets/images/machinecu.png"),
            gamesBox(name: "Machine Curl", pics: "assets/images/onedumb.png"),
            gamesBox(name: "Machine Preacher Curl", pics: "assets/images/machinepae.png"),
            gamesBox(name: "One Arm Bicep Curl", pics: "assets/images/bicepbench.png"),
            gamesBox(name: "Seated One Arm Bicep Curl", pics: "assets/images/onearms.png"),
            gamesBox(name: "V Barbell Curl", pics: "assets/images/vbarb.png"),
            gamesBox(name: "Close Tricep Bench Press", pics: "assets/images/closed.png"),
            gamesBox(name: "Dumbbell Crush", pics: "assets/images/dskull.png"),
            gamesBox(name: "Over Head Tricep Extension", pics: "assets/images/overhead.png"),
            gamesBox(name: "Over Head Dumbbell", pics: "assets/images/heads.png"),
            gamesBox(name: "Reverse Dips", pics: "assets/images/dip.png"),
            gamesBox(name: "Reverse Tricep Push Down", pics: "assets/images/reversetr.png"),
            gamesBox(name: "Skull Crush", pics: "assets/images/skull.png"),
            gamesBox(name: "Tricep Push Down", pics: "assets/images/pushdown.png"),
            gamesBox(name: "Tricep Dips", pics: "assets/images/dips.png"),
            gamesBox(name: "Reverse Forearm", pics: "assets/images/reversefor.png"),
          ],
        ),
      ),

    );
  }
}

