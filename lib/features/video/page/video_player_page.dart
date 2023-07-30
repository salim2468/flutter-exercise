import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerPage extends StatefulWidget {
  final Map<String, String> video;
  const VideoPlayerPage({super.key, required this.video});

  @override
  State<VideoPlayerPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPlayerPage> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(widget.video['url']!)!);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
      ),
      builder: (context, player) => Scaffold(
        appBar: AppBar(title: Text(widget.video['title']!)),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: player,
        ),
      ),
    );
  }
}
