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
        builder: (context) => CategoryListPage(
              categoryTitle: categoryType,
            )));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () => onTap(context, ref),
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 7, 7, 7).withOpacity(0.5),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(59, 59, 59, 1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(4, 2))
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 30,
            ),
            Text(
              categoryType,
              style: const TextStyle(color: AppColor.kWhite),
            ),
          ],
        ),
      ),
    );
  }
}
