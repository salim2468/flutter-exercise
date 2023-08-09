import 'package:flutter/material.dart';
import 'package:flutter_exercise/common/snackbar.dart';
import 'package:flutter_exercise/constant/colors.dart';
import 'package:flutter_exercise/features/download/model/exercise_db/exercise_db.dart';
import 'package:flutter_exercise/model/exercise/exercise.dart';
import 'package:hive/hive.dart';

import '../custom_widget/detail_page_info_card.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(this.exercise, {this.downloadPage = false, super.key});
  final Exercise exercise;
  final bool downloadPage;

  @override
  Widget build(BuildContext context) {
    final ExerciseDB exerciseDB = ExerciseDB.fromExercise(exercise);
    return Scaffold(
      appBar: AppBar(title: Text(exercise.name)),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                DetailPageInfoCard(text: 'Type: ${exercise.type}'),
                const SizedBox(
                  height: 8,
                ),
                DetailPageInfoCard(text: 'Muscle: ${exercise.muscle}'),
                const SizedBox(
                  height: 8,
                ),
                DetailPageInfoCard(text: 'Equipments: ${exercise.equipment}'),
                const SizedBox(
                  height: 8,
                ),
                DetailPageInfoCard(text: 'Difficulty: ${exercise.difficulty}'),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8, bottom: 70),
                  child: Text(
                    exercise.instructions,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade400,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: downloadPage
          ? SizedBox()
          : FloatingActionButton(
              backgroundColor: AppColor.kPrimary,
              onPressed: () {},
              child: IconButton(
                  onPressed: () {
                    Hive.box('exercise_box').add(exerciseDB);
                    showSnackBar(context, 'Downloaded');
                  },
                  icon: Icon(Icons.download)),
            ),
    );
  }
}
