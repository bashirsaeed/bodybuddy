import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class accountSetup extends StatefulWidget {
  const accountSetup({super.key});

  @override
  State<accountSetup> createState() => _accountSetupState();
}

class _accountSetupState extends State<accountSetup> {
  int _value=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 70,),
            Center(child: Text("Tell Us About Yourself",style: GoogleFonts.k2d(fontSize: 30),)),
            Center(child: Text("To give you a better experience and results",style:GoogleFonts.cabin(fontSize: 15), )),
            Center(child: Text("we need to know few things about you before",style:GoogleFonts.cabin(fontSize: 15), )),
            Center(child: Text("letting you in",style:GoogleFonts.cabin(fontSize: 15), )),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Select your Gender",style: GoogleFonts.oswald(fontSize:20),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Radio(value: 1, groupValue: _value, onChanged: (value){
                        setState(() {

                        });
                      },),
                      SizedBox(width: 10,),
                      Text("Male",style: GoogleFonts.ptSans(fontSize:15),),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(value: 2, groupValue: _value, onChanged: (value){
                        setState(() {

                        });
                      },),
                      SizedBox(width: 10,),
                      Text("Female",style: GoogleFonts.ptSans(fontSize:15),)
                    ],
                  ),


                ],
              ),

            ),
            SizedBox(height: 20,),
            Padding(
              padding:  EdgeInsets.only(right: 185),
              child: Column(
                children: [
                  Text("Enter your age",style: GoogleFonts.oswald(fontSize:20),),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: SizedBox(height: 30,
                      width: 200,
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelStyle: GoogleFonts.aBeeZee(color: Colors.black,),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 0, ),

                          ),
                          border: OutlineInputBorder(
                          ),
                        ),
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Column(
                      children: [
                        Text("Enter your weight",style: GoogleFonts.oswald(fontSize:20),),
                        Text("(in kg)",style: GoogleFonts.k2d(fontSize:20),),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right:5),
                          child: SizedBox(height: 30,
                            width: 200,
                            child: TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelStyle: GoogleFonts.aBeeZee(color: Colors.black,),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 0, ),

                                ),
                                border: OutlineInputBorder(
                                ),
                              ),
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Column(
                      children: [
                        Text("Enter your height ",style: GoogleFonts.oswald(fontSize:20),),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right:5),
                          child: SizedBox(height: 30,
                            width: 200,
                            child: TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelStyle: GoogleFonts.aBeeZee(color: Colors.black,),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 0, ),

                                ),
                                border: OutlineInputBorder(
                                ),
                              ),
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),

                ],
              ),
            ),
            SizedBox(width: 280,
              child: MaterialButton(height: 40,color:Color.fromRGBO(255, 191, 0, 1),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){

              },child: Text("Next",style: TextStyle(color: Colors.black),),),
            ),

          ],
        ),
      ),
    );
  }
}




