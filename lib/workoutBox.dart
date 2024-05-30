import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class gamesBox extends StatelessWidget {
  gamesBox({required this.name,required this.pics});
  String pics;
  String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        ListTile(
          leading: Image.asset(pics,height: 120,width:70 ,),
          title: Center(child: Text(name,style: GoogleFonts.poppins(fontWeight:FontWeight.w500),)),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 56),
            child: MaterialButton(height: 25,minWidth:10,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),color: Colors.red,onPressed: (){

                },
               child: Text("Click to Watch",style: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w600,color:Colors.white)),
                    ),
          ),
        ),
        Divider(thickness: 1,),
      ],
    );
  }
}
