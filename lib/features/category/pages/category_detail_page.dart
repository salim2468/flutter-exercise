import 'package:flutter/material.dart';
import 'package:flutter_exercise/constant/colors.dart';
import 'package:flutter_exercise/model/exercise/exercise.dart';

TextStyle textStyle = const TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w500,
);

class CategoryDetailPage extends StatelessWidget {
  const CategoryDetailPage(this.exercise, {super.key});
  final Exercise exercise;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exercise.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Type: ${exercise.type}',
                style: textStyle,
              ),
              Text(
                'Muscle: ${exercise.muscle}',
                style: textStyle,
              ),
              Text(
                'Equipments: ${exercise.equipment}',
                style: textStyle,
              ),
              Text(
                'Difficulty: ${exercise.difficulty}',
                style: textStyle,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: AppColor.kPrimary,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(14),
                        bottomRight: Radius.circular(14))),
                child: Text(
                  exercise.instructions,
                  style: textStyle.copyWith(fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
