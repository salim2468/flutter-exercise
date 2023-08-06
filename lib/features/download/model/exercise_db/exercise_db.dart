import 'package:hive/hive.dart';

import '../../../../model/exercise/exercise.dart';
part 'exercise_db.g.dart';

@HiveType(typeId: 1)
class ExerciseDB {
  @HiveField(0)
  String name;
  @HiveField(1)
  String type;
  @HiveField(2)
  String muscle;
  @HiveField(3)
  String equipment;
  @HiveField(4)
  String difficulty;
  @HiveField(5)
  String instructions;

  ExerciseDB({
    required this.name,
    required this.type,
    required this.muscle,
    required this.equipment,
    required this.difficulty,
    required this.instructions,
  });

// Constructor to convert Exercise to ExerciseDB
  ExerciseDB.fromExercise(Exercise exercise)
      : name = exercise.name,
        type = exercise.type,
        muscle = exercise.muscle,
        equipment = exercise.equipment,
        difficulty = exercise.difficulty,
        instructions = exercise.instructions;
}
