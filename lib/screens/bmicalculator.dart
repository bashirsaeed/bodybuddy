import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class bmicalculator extends StatefulWidget {
  const bmicalculator({super.key});

  @override
  State<bmicalculator> createState() => _bmicalculatorState();
}

class _bmicalculatorState extends State<bmicalculator> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("BMI Calculator",style: GoogleFonts.poppins(color: Colors.white,fontSize: 30),),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80,),
            Text("BMI",style: TextStyle(fontSize: 34,fontWeight: FontWeight.w700),),
            SizedBox(height: 21,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                cursorColor: Colors.black,
                controller:wtController ,
                decoration: InputDecoration(
                  label: Text("Enter your weight in KGs",style: TextStyle(color: Colors.black54),),
                  prefixIcon: Icon(Icons.line_weight),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),

                  ),
                ),
                keyboardType:TextInputType.number ,
              ),
            ),
            SizedBox(height: 11,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                cursorColor: Colors.black,
                controller:ftController ,
                decoration: InputDecoration(
                  label: Text("Enter your height (in feet)",style: TextStyle(color: Colors.black54),),
                  prefixIcon: Icon(Icons.height),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),

                  ),
                ),
                keyboardType:TextInputType.number ,
              ),
            ),
            SizedBox(height: 11,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                cursorColor: Colors.black,
                controller:inController ,
                decoration: InputDecoration(
                  label: Text("Enter your height ( in inch)",style: TextStyle(color: Colors.black54),),
                  prefixIcon: Icon(Icons.height),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),

                  ),
                ),
                keyboardType:TextInputType.number ,
              ),
            ),
            SizedBox(height: 60,),
            MaterialButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),color: Colors.black,onPressed: ()async{
              var wt= wtController.text.toString();
              var ft= ftController.text.toString();
              var inch= inController.text.toString();
              if(wt!="" && ft!="" && inch!="") {
                var iwt=int.parse(wt);
                var ift=int.parse(ft);
                var iInch=int.parse(inch);
                var tInch = (ift*12)+iInch;
                var tCm= tInch*2.54;
                var tM= tCm/100;
                var bmi= iwt/(tM*tM);
                var msg="";

                if(bmi>25){
                  msg= "You are overweight!!";

                }else if(bmi<18){
                  msg= "You are underweight!!";

                }else{
                  msg= "You are Healthy!!";


                }

                setState(() {
                  result="$msg \n Your BMI is: ${bmi.toStringAsFixed(2)}";
                });



              } else {
                setState(() {
                  result="Please fill all the required blanks!!";
                });

              }
            } , child:Text ("Calculate",style: GoogleFonts.poppins(color:Colors.white),)),
            SizedBox(height: 11,),
            Text(result,style: TextStyle(fontSize: 19),),

          ],
        ),
      ),
    );
  }
}
