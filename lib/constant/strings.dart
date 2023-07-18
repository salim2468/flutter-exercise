import 'package:flutter/material.dart';

class AppString {
  static const String title = "Stay Fit and Shape Your Self";
  static Color kPrimary = Colors.grey.shade500;
  static Color kBackground = Colors.grey.shade200;
  static const Color kCard = Color(0xffDADBFF);
}

class AppFont {
  static const String secondary = "PlayFairDiplay";
  static const String primary = 'BlackOpsOne';
}

const List<String> categoryType = [
  'Cardio',
  'Olympic Weightlifting',
  'Plyometrics',
  'Powerlifting',
  'Strength',
  'Stretching',
  'Strongman'
];

const Map<String, String> categoryTypeEndpoints = {
  'Cardio': 'cardio',
  'Olympic Weightlifting': 'olympic_weightlifting',
  'Plyometrics': 'plyometrics',
  'Powerlifting': 'powerlifting',
  'Strength': 'strength',
  'Stretching': 'stretching',
  'Strongman': 'strongman'
};

const List<String> categoryImagesPath = [
  'assets/images/cardio.png',
  'assets/images/weightlifter.png',
  'assets/images/cardio.png',
  'assets/images/weightlifter.png',
  'assets/images/strength.png',
  'assets/images/stretch.png',
  'assets/images/strongman.png'
];

class AppImage {
  static const gymImage = 'assets/images/gymimg.png';

  static const beginnerImage = 'assets/images/beginnerImg.png';
  static const intermediateImage = 'assets/images/intermediateImg.png';
  static const expertImage = 'assets/images/expertImg.png';
}
