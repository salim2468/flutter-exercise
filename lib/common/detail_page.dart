import 'package:flutter/material.dart';
import 'package:flutter_exercise/constant/colors.dart';
import 'package:flutter_exercise/model/exercise/exercise.dart';

import '../../../custom_widget/custom_card.dart';

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardContainer(
                  text: exercise.name,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  backgroundColor: AppColor.kBlack,
                  margin: 10,
                  width: double.maxFinite,
                  boxShadow: [
                    BoxShadow(
                        color: AppColor.kBackground,
                        blurRadius: 2,
                        spreadRadius: 1),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Type: ${exercise.type}',
                  style: textStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Muscle: ${exercise.muscle}',
                  style: textStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Equipments: ${exercise.equipment}',
                  style: textStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Difficulty: ${exercise.difficulty}',
                  style: textStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: AppColor.kBlack,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                  ),
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
