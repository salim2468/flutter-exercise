import 'package:flutter/material.dart';

import '../features/category/custom_widget/category_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Category',
            ),
            const CategoryWidget(),
            Container(height: 200, color: Colors.amber),
            Container(height: 200, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
