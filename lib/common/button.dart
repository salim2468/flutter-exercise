import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  double? marginVertical;
  double? width;
  Function() onPressed;
  CustomButton(
      {required this.text,
      this.marginVertical,
      this.width,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
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
        ),
      ),
    );
  }
}
