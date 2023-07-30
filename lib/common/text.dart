import 'package:flutter/material.dart';
import 'package:flutter_exercise/constant/strings.dart';

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
  final String? fontFamily;
  final Color? color;

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
      this.fontFamily,
      this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(
          vertical: marginVertical ?? 0, horizontal: marginHorizontal ?? 0),
      padding: EdgeInsets.symmetric(
          vertical: paddingVertical ?? 0, horizontal: paddingHorizontal ?? 0),
      alignment: alignment ?? Alignment.center,
      child: Text(
        text,
        style: TextStyle(
            fontSize: fontSize ?? 17,
            color: color,
            fontWeight: fontWeight,
            fontFamily: fontFamily ?? AppFont.secondary),
      ),
    );
  }
}
