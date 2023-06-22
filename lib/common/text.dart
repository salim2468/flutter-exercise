import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? marginVertical;
  final double? width;
  const CustomText(
      {required this.text, this.marginVertical, this.width, super.key});

  void onTap(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: Container(
        width: width ?? double.maxFinite,
        margin: EdgeInsets.symmetric(vertical: marginVertical ?? 0),
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(5),
          // border: Border.all(width: 1),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
