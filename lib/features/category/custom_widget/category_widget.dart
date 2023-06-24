import 'package:flutter/material.dart';

import '../../../constant/strings.dart';

import 'category_card.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryTitle.length,
        itemBuilder: (context, index) => CategoryCard(
          title: categoryTitle[index],
          imagePath: categoryImagesPath[index],
        ),
      ),
    );
  }
}
