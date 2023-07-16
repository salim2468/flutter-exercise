import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_exercise/common/text.dart';
import 'package:flutter_exercise/features/dashboard/custom_widget/welcome_image.dart';
import '../../category/custom_widget/category_widget.dart';
import '../../exercise_level/custom_widget/exercise_leve_slider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: 'Exercise',
          fontFamily: 'BlackOpsOne',
          fontSize: 25,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeImage(),
            SizedBox(
              height: 15,
            ),
            CustomText(
              text: 'Start From today',
              alignment: Alignment.topLeft,
              fontWeight: FontWeight.w700,
              marginHorizontal: 6,
              marginVertical: 2,
            ),
            ExerciseLevelSlider(),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: 'Category / Type',
              alignment: Alignment.topLeft,
              fontWeight: FontWeight.w700,
              marginHorizontal: 6,
              marginVertical: 2,
            ),
            CategoryWidget(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
