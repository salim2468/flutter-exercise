import 'package:flutter/material.dart';
import 'package:flutter_exercise/model/exercise/exercise.dart';

import '../custom_widget/detail_page_info_card.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(this.exercise, {super.key});
  final Exercise exercise;
  @override
  Widget build(BuildContext context) {
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
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    exercise.instructions,
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade300),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
