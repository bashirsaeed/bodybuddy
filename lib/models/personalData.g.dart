// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personalData.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class personalInfoModelAdapter extends TypeAdapter<personalInfoModel> {
  @override
  final int typeId = 0;

  @override
  personalInfoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return personalInfoModel(
      name: fields[0] as String,
      height: fields[2] as String,
      age: fields[1] as String,
      weight: fields[3] as String,
      gender: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, personalInfoModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.height)
      ..writeByte(3)
      ..write(obj.weight)
      ..writeByte(4)
      ..write(obj.gender);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is personalInfoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class targetGoalAdapter extends TypeAdapter<targetGoal> {
  @override
  final int typeId = 1;

  @override
  targetGoal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return targetGoal(
      goal: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, targetGoal obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.goal);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is targetGoalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class physicalLevelAdapter extends TypeAdapter<physicalLevel> {
  @override
  final int typeId = 2;

  @override
  physicalLevel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return physicalLevel(
      level: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, physicalLevel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.level);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is physicalLevelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class calenderAdapter extends TypeAdapter<calender> {
  @override
  final int typeId = 3;

  @override
  calender read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return calender(
      date: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, calender obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is calenderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class bodypartAdapter extends TypeAdapter<bodypart> {
  @override
  final int typeId = 4;

  @override
  bodypart read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return bodypart(
      part: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, bodypart obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.part);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is bodypartAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
