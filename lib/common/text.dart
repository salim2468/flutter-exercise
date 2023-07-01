import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? marginVertical;
  final double? marginHorizontal;
  final double? paddingVertical;
  final double? paddingHorizontal;
  final AlignmentGeometry? alignment;
  final double? width;
  final double? fontSize;
  final FontWeight? fontWeight;

  const CustomText(
      {required this.text,
      this.marginVertical,
      this.marginHorizontal,
      this.paddingVertical,
      this.paddingHorizontal,
      this.alignment,
      this.width,
      this.fontSize,
      this.fontWeight,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      margin: EdgeInsets.symmetric(
          vertical: marginVertical ?? 0, horizontal: marginHorizontal ?? 0),
      padding: EdgeInsets.symmetric(
          vertical: paddingVertical ?? 0, horizontal: paddingHorizontal ?? 0),
      alignment: alignment ?? Alignment.center,
      // decoration: BoxDecoration(
      //   color: Colors.grey.shade400,
      //   borderRadius: BorderRadius.circular(5),
      //   // border: Border.all(width: 1),
      // ),
      child: Text(
        text,
        style: TextStyle(fontSize: 17, fontWeight: fontWeight),
      ),
    );
  }
}
