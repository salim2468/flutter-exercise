import 'package:flutter/material.dart';
import '../../constant/colors.dart';
import 'constant/video_strings.dart';
import 'custom_widget/video_card.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: AppVideoString.videoList.length,
        itemBuilder: (context, index) {
          return VideoCard(video: AppVideoString.videoList[index]);
        });
  }
}

class AppColors {}
