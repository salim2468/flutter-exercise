import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercise/constant/strings.dart';

const imageList = [
  AppImage.beginnerImage,
  AppImage.intermediateImage,
  AppImage.expertImage
];

const levelList = ['beginner', 'intermediate', 'expert'];
const sloganList = ['Start from here', 'Add some more', 'Be Pro..'];

class ExerciseLevelSlider extends StatelessWidget {
  const ExerciseLevelSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (context, index, pageViewIndex) {
          return Container(
            margin: const EdgeInsets.all(5),
            child: Stack(
              children: [
                Image.network(
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
                      Text(
                        sloganList[index],
                        style: const TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      Text(levelList[index].toUpperCase(),
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w900)),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
        ));
  }
}
