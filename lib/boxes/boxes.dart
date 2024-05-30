
import 'package:bodybuddy/models/personalData.dart';
import 'package:hive/hive.dart';


class Boxes{
  static Box<personalInfoModel> getpersonalData()=>Hive.box<personalInfoModel>('personalInfo');
  static Box<targetGoal> gettargetGoal()=>Hive.box<targetGoal>('targetGoal');
  static Box<physicalLevel> getphyscialLevel()=>Hive.box<physicalLevel>('physicalLevel');
  static Box<calender> getcalender()=>Hive.box<calender>('calender');
  static Box<bodypart> getbodypart()=>Hive.box<bodypart>('bodypart');



}