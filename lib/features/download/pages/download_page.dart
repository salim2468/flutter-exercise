import 'package:flutter/material.dart';
import 'package:flutter_exercise/custom_widget/list_card.dart';
import 'package:flutter_exercise/features/download/model/exercise_db/exercise_db.dart';
import 'package:flutter_exercise/model/exercise/exercise.dart';
import 'package:hive/hive.dart';

import '../../../common/detail_page.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    final downloadedExercise = Hive.box('exercise_box');
    // print(downloadedExercise.getAt(0));
    return Scaffold(
      appBar: AppBar(
        title: Text('Downloads'),
      ),
      body: ListView.builder(
          itemCount: downloadedExercise.length,
          itemBuilder: (context, index) {
            final exercise = downloadedExercise.getAt(index) as ExerciseDB;
            return ListCard(
              exercise: Exercise.fromExerciseDB(exercise),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailPage(
                          Exercise.fromExerciseDB(exercise),
                          downloadPage: true,
                        )));
              },
              downloadPage: true,
              cardIcon: Icons.delete,
              onIconPressed: () {
                Hive.box('exercise_box').deleteAt(index);
                setState(() {});
              },
            );
          }),
    );
  }
}
