import 'package:flutter/material.dart';
import '../../../constant/colors.dart';
import '../../../model/exercise/exercise.dart';

class ListCard extends StatelessWidget {
  const ListCard(
      {required this.exercise,
      required this.onPressed,
      this.cardIcon,
      this.onIconPressed,
      this.downloadPage = false,
      super.key});
  final Exercise exercise;
  final Function() onPressed;
  final IconData? cardIcon;
  final Function()? onIconPressed;
  final bool downloadPage;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColor.kPrimary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  exercise.name,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: AppColor.kBlack),
                ),
                downloadPage
                    ? IconButton(
                        onPressed: onIconPressed,
                        // () {
                        //   Hive.box('exercise_box').deleteAt(index!);
                        // },
                        icon: Icon(
                          cardIcon,
                          color: AppColor.kBlack,
                        ))
                    : SizedBox(),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: AppColor.kWhite,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade800,
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(2, 2))
                    ],
                  ),
                  child: Text(
                    exercise.difficulty,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColor.kBlack,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Muscles',
                      style: TextStyle(fontSize: 12, color: AppColor.kBlack),
                    ),
                    Text(
                      exercise.muscle.toUpperCase(),
                      style: const TextStyle(
                          color: AppColor.kBlack, fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
