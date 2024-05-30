import 'package:hive/hive.dart';
part 'personalData.g.dart';
@HiveType(typeId: 0)
class personalInfoModel extends HiveObject{
  @HiveField(0)
  String name;
  @HiveField(1)
  String age;
  @HiveField(2)
  String height;
  @HiveField(3)
  String weight;
  @HiveField(4)
  String gender;
  personalInfoModel({required this.name,required this.height,required this.age,required this.weight,required this.gender});

}
@HiveType(typeId: 1)
class targetGoal extends HiveObject{
  @HiveField(0)
  String goal;

  targetGoal({required this.goal});

}
@HiveType(typeId: 2)
class physicalLevel extends HiveObject{
  @HiveField(0)
  String level;

  physicalLevel({required this.level});

}
@HiveType(typeId: 3)
class calender extends HiveObject{
  @HiveField(0)
  String date;

  calender({required this.date});

}
@HiveType(typeId: 4)
class bodypart extends HiveObject{
  @HiveField(0)
  String part;

  bodypart({required this.part});

}


