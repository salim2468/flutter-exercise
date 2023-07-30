import 'package:flutter/material.dart';
import '../constant/colors.dart';

class DetailPageInfoCard extends StatelessWidget {
  const DetailPageInfoCard({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.kPrimary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const Icon(Icons.arrow_right_rounded, size: 28, color: AppColor.kBlack),
        Text(text,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColor.kBlack))
      ]),
    );
  }
}
