import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constant/colors.dart';
import '../pages/category_list_page.dart';

class CategoryCard extends ConsumerWidget {
  const CategoryCard(
      {required this.categoryType, required this.imagePath, super.key});
  final String categoryType;
  final String imagePath;

  void onTap(BuildContext context, WidgetRef ref) {
    ref.watch(categoryTitleProvider.notifier).state = categoryType;

    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => CategoryListPage(categoryType)));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () => onTap(context, ref),
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: AppColor.kCard, borderRadius: BorderRadius.circular(8.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 30,
            ),
            Text(
              categoryType,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
