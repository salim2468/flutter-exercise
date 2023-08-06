// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExerciseDBAdapter extends TypeAdapter<ExerciseDB> {
  @override
  final int typeId = 1;

  @override
  ExerciseDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExerciseDB(
      name: fields[0] as String,
      type: fields[1] as String,
      muscle: fields[2] as String,
      equipment: fields[3] as String,
      difficulty: fields[4] as String,
      instructions: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ExerciseDB obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.muscle)
      ..writeByte(3)
      ..write(obj.equipment)
      ..writeByte(4)
      ..write(obj.difficulty)
      ..writeByte(5)
      ..write(obj.instructions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExerciseDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
