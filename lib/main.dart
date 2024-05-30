
import 'package:bodybuddy/models/personalData.dart';
import 'package:bodybuddy/screens/GoalScreen.dart';
import 'package:bodybuddy/screens/Myinfo.dart';
import 'package:bodybuddy/screens/activityScreen.dart';
import 'package:bodybuddy/screens/bodyGoals.dart';
import 'package:bodybuddy/screens/calenderScreen.dart';
import 'package:bodybuddy/screens/dateScreen.dart';
import 'package:bodybuddy/screens/homeScreen.dart';
import 'package:bodybuddy/screens/mealScreen.dart';
import 'package:bodybuddy/screens/memberLevel.dart';
import 'package:bodybuddy/screens/physicalActivity.dart';
import 'package:bodybuddy/screens/targetMuscles.dart';
import 'package:bodybuddy/screens/trainingDays.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'screens/welcomeScreen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  var directory=await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(personalInfoModelAdapter());
  await Hive.openBox<personalInfoModel>('personalInfo');
  Hive.registerAdapter(targetGoalAdapter());
  await Hive.openBox<targetGoal>('targetGoal');
  Hive.registerAdapter(physicalLevelAdapter());
  await Hive.openBox<physicalLevel>('physicalLevel');
  Hive.registerAdapter(calenderAdapter());
  await Hive.openBox<calender>('calender');
  Hive.registerAdapter(bodypartAdapter());
  await Hive.openBox<bodypart>('bodypart');
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: welcomeScreen(

      )
    );
  }
}
