import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mealScreen extends StatelessWidget {
  const mealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("MEAL PLANS",style: GoogleFonts.poppins(color: Colors.black,fontSize: 30,fontWeight:FontWeight.w500),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
