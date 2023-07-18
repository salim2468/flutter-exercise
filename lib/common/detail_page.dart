import 'package:flutter/material.dart';
import 'package:flutter_exercise/constant/colors.dart';
import 'package:flutter_exercise/model/exercise/exercise.dart';

TextStyle textStyle = const TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w500,
);

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
                  // decoration: const BoxDecoration(
                  //   color: AppColor.kBlack,
                  //   borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(14),
                  //     bottomRight: Radius.circular(14),
                  //   ),
                  // ),
                  child: Text(
                    exercise.instructions,
                    style: textStyle.copyWith(
                        fontSize: 15, color: Colors.grey.shade300),
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

class DetailPageInfoCard extends StatelessWidget {
  const DetailPageInfoCard({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.kPrimary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const Icon(Icons.arrow_right_rounded, size: 28, color: AppColor.kBlack),
        Text(text,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColor.kBlack))
      ]),
    );
  }
}
