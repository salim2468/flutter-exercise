import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_exercise/constant/strings.dart';
import 'package:flutter_exercise/dashboard/custom_widget/welcome_image.dart';

import '../../features/category/custom_widget/category_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise'),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeImage(),
            SizedBox(
              height: 4,
            ),
            Text(
              'Category / Type',
              style: TextStyle(fontSize: 16),
            ),
            CategoryWidget(),
          ],
        ),
      ),
    );
  }
}
