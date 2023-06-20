import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import '../pages/category_list_page.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({required this.title, required this.imagePath, super.key});
  final String title;
  final String imagePath;

  void onTap(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => CategoryListPage(title)));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
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
            Text(title),
          ],
        ),
      ),
    );
  }
}
