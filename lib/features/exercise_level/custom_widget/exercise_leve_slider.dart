import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercise/common/text.dart';
import 'package:flutter_exercise/constant/strings.dart';
import 'package:flutter_exercise/features/exercise_level/pages/difficulty_list_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const imageList = [
  AppImage.beginnerImage,
  AppImage.intermediateImage,
  AppImage.expertImage
];

const levelList = ['beginner', 'intermediate', 'expert'];
const sloganList = ['Start from here', 'Add some more', 'Be Pro..'];

class ExerciseLevelSlider extends ConsumerWidget {
  const ExerciseLevelSlider({super.key});

  void onTap(BuildContext context, WidgetRef ref, levelTitle) {
    ref.watch(difficultyTitleProvider.notifier).state = levelTitle;

    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DifficultyListPage(
              categoryTitle: levelTitle,
            )));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (context, index, pageViewIndex) {
          return InkWell(
            onTap: () => onTap(context, ref, levelList[index]),
            child: Container(
              margin: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 6,
                      blurRadius: 6,
                      offset: Offset(0, 2)),
                ],
              ),
              child: Stack(
                children: [
                  Image.asset(
                    imageList[index],
                    fit: BoxFit.cover,
                    width: 300,
                  ),
                  Positioned(
                    top: 50,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: sloganList[index],
                          fontSize: 16,
                        ),
                        CustomText(
                          text: levelList[index].toUpperCase(),
                          fontFamily: AppFont.primary,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
        ));
  }
}
