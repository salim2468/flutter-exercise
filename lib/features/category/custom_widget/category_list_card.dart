import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import '../../../model/exercise/exercise.dart';
import '../pages/category_detail_page.dart';

class CategoryListCard extends StatelessWidget {
  const CategoryListCard(this.exercise, {super.key});
  final Exercise exercise;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CategoryDetailPage(exercise))),
      child: Container(
        margin: const EdgeInsets.all(6),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColor.kCard,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exercise.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: AppColor.kWhite,
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                exercise.difficulty,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
