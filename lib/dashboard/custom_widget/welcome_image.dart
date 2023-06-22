import 'package:flutter/material.dart';

import '../../constant/strings.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Stack(
        children: [
          Image.network(
            gymImage,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Positioned(
            top: 100,
            left: 10,
            child: Text(
              'Welcome, \nGet Fit',
              style: TextStyle(
                  color: AppString.kWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
