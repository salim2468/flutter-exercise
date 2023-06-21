import 'package:flutter/material.dart';

class AppString {
  static const String = 'Strength';
  static const Color kWhite = Colors.white;
  static Color kPrimary = Colors.grey.shade500;
  static Color kBackground = Colors.grey.shade200;
  static const Color kCard = Color(0xffDADBFF);
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
