import 'package:bodybuddy/screens/accountSetup.dart';
import 'package:bodybuddy/screens/homeScreen.dart';
import 'package:flutter/material.dart';

import 'screens/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: accountSetup(

      ),
    );
  }
}
