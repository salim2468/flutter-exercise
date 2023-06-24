// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExerciseList _$ExerciseListFromJson(Map<String, dynamic> json) => ExerciseList(
      exerciseList: (json['exerciseList'] as List<dynamic>)
          .map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExerciseListToJson(ExerciseList instance) =>
    <String, dynamic>{
      'exerciseList': instance.exerciseList,
    };

Exercise _$ExerciseFromJson(Map<String, dynamic> json) => Exercise(
      name: json['name'] as String,
      type: json['type'] as String,
      muscle: json['muscle'] as String,
      equipment: json['equipment'] as String,
      difficulty: json['difficulty'] as String,
      instructions: json['instructions'] as String,
    );

Map<String, dynamic> _$ExerciseToJson(Exercise instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'muscle': instance.muscle,
      'equipment': instance.equipment,
      'difficulty': instance.difficulty,
      'instructions': instance.instructions,
    };
