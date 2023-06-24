import 'package:json_annotation/json_annotation.dart';
part 'exercise.g.dart';

@JsonSerializable()
class ExerciseList {
  List<Exercise> exerciseList;
  ExerciseList({required this.exerciseList});

  factory ExerciseList.fromJson(Map<String, dynamic> json) =>
      _$ExerciseListFromJson(json);

  Map<String, dynamic> toJson() => _$ExerciseListToJson(this);
}

@JsonSerializable()
class Exercise {
  String name;
  String type;
  String muscle;
  String equipment;
  String difficulty;
  String instructions;

  Exercise({
    required this.name,
    required this.type,
    required this.muscle,
    required this.equipment,
    required this.difficulty,
    required this.instructions,
  });

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);

  Map<String, dynamic> toJson() => _$ExerciseToJson(this);
}
