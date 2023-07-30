import 'package:flutter/material.dart';
import '../../../common/text.dart';
import '../../../constant/colors.dart';
import '../page/video_player_page.dart';

class VideoCard extends StatelessWidget {
  final Map<String, String> video;
  const VideoCard({super.key, required this.video});

  onTap(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => VideoPlayerPage(video: video)));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColor.kPrimary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(Icons.play_circle, size: 50, color: AppColor.kBackground),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: video['title']!,
                    fontWeight: FontWeight.bold,
                    color: AppColor.kBlack),
                CustomText(
                    text: 'Duration: ${video['duration']!}',
                    fontSize: 14,
                    color: AppColor.kBlack),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
