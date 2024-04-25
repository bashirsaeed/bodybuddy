import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    // TODO: implement initState

    _videoPlayerController =  VideoPlayerController.networkUrl(Uri.parse("https://firebasestorage.googleapis.com/v0/b/gyms-d96f8.appspot.com/o/4761421-sd_640_338_25fps.mp4?alt=media&token=f9d38135-d1f9-4642-ad92-b6ba6075ea3f"));
    chewieController =ChewieController(videoPlayerController: _videoPlayerController!,
      looping: true,
      autoPlay: true,
      showControls: false,

    );
    super.initState();
  }
  @override
  void dispose() {

    _videoPlayerController!.dispose();
    chewieController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        toolbarHeight: 60,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image(image: AssetImage("assets/images/dumm.png"),height: 50,width: 50,),
           SizedBox(width: 10,),
            Text("Body Buddy",style: GoogleFonts.poppins(color: Colors.white,fontSize: 25,fontWeight:FontWeight.w500),),
          ],
        ),
        actions: [
          Icon(Icons.search,color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.bookmark_add,color: Colors.white,),
          SizedBox(width: 10,),
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,size: 20,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.black,size: 20,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.black,size: 20,),
            label: 'Profile',
          ),


        ],),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [

              AspectRatio(aspectRatio:  _videoPlayerController.value.aspectRatio,
                  child: Chewie(controller: chewieController!)),
              SizedBox(height: 10,),
              Padding(
                padding:  EdgeInsets.only(left: 15,right: 15),
                child: Align(alignment: Alignment.topLeft,child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Featured Workout",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w700),),
                    Text("See all",style: GoogleFonts.poppins(fontSize: 16,color: Colors.orange,fontWeight: FontWeight.bold),),

                  ],
                )),
              ),
              SizedBox(height: 10,),

              Container(
                height: 150,
                padding: EdgeInsets.only(left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 10,),
                   workoutBox(img: "assets/images/chest.jpg",text:"Chest Workout " ),
                    SizedBox(width: 10,),
                    workoutBox(img: "assets/images/wings.jpg",text:"Back Workout" ),
                    SizedBox(width: 10,),
                    workoutBox(img: "assets/images/shoulder.png",text:"Shoulder Workout" ),
                    SizedBox(width: 10,),
                    workoutBox(img: "assets/images/bicepp.jpg",text:"Arms Workout " ),
                    SizedBox(width: 10,),
                    workoutBox(img: "assets/images/leg.jpg",text:"Legs Workout " ),
                    SizedBox(width: 10,),
                    workoutBox(img: "assets/images/bicepp.jpg",text:"Bicep Workout " ),

                    SizedBox(width: 10,),
                  ],

                ),
              ),
              SizedBox(height: 20,),



              Padding(
                padding:  EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Workout Levels",style: GoogleFonts.poppins(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700),),
                    Text("See all",style: GoogleFonts.poppins(fontSize: 16,color: Colors.orange,fontWeight: FontWeight.bold),),

                  ],
                ),
              ),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [

                 MaterialButton(height: 20,minWidth:90,color:Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){

                 },child: Text("Beginner",style: TextStyle(color: Colors.black),),),
                 MaterialButton(height: 20,minWidth:90,color:Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){

                 },child: Text("InternnState",style: TextStyle(color: Colors.black),),),

                 MaterialButton(height: 20,minWidth:90,color:Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,onPressed: (){

                 },child: Text("Advance",style: TextStyle(color: Colors.black),),),
               ],
              ),
              SizedBox(height: 20,),



            ],
          ),
        ),
      ),
    );
  }
}

Widget workoutBox({img,text}){
  return Stack(
    children: [
      ClipRRect(borderRadius: BorderRadius.circular(12),
          child: Image.asset(img,)),
      Positioned(
          bottom:0,right: 0,left: 0,
          child: Container(padding: EdgeInsets.only(left: 8,bottom: 8),
            color: Colors.white.withOpacity(0.2),width: double.infinity,height: 50,
            child: Align(alignment: Alignment.bottomCenter,child: Text(text,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),)),



          ))
    ],
  );
}