import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CardContainer extends StatelessWidget {
  const CardContainer(
      {this.width,
      this.padding,
      this.margin,
      this.backgroundColor,
      required this.text,
      this.textColor,
      this.textStyle,
      this.boxShadow,
      super.key});
  final double? width;
  final double? margin;
  final double? padding;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final List<BoxShadow>? boxShadow;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.all(margin ?? 0),
      padding: EdgeInsets.all(padding ?? 8),
      decoration: BoxDecoration(
          color: backgroundColor ?? AppColor.kWhite,
          borderRadius: BorderRadius.circular(8),
          boxShadow: boxShadow),
      child: Text(
        text.toUpperCase(),
        textAlign: TextAlign.center,
        style: textStyle ?? TextStyle(color: textColor ?? AppColor.kBlack),
      ),
    );
  }
}
