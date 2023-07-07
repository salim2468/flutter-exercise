import 'package:flutter/material.dart';
import '../../common/text.dart';
import '../../constant/strings.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.black,
      child: Stack(
        children: [
          Image.asset(
            AppImage.gymImage,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Positioned(
            top: 100,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Welcome,',
                  fontFamily: AppFont.primary,
                  fontSize: 20,
                ),
                CustomText(
                  text: 'Get Fit',
                  fontFamily: AppFont.primary,
                  fontSize: 30,
                ),
                CustomText(
                  text: 'Transform your fitness into the shape',
                  fontFamily: AppFont.primary,
                  fontSize: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
