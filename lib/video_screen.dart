import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatelessWidget {
  final String videoUrl;
  VideoScreen({required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController(
        initialVideoId: videoUrl,
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
          // hideThumbnail: false,
          // isLive: false,
          // showLiveFullscreenButton: false
        ));
    return Scaffold(
      body: Center(
        child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: controller,
            showVideoProgressIndicator: true,
            // aspectRatio: 20 / 9,
          ),
          builder: (context, player) {
            return Center(
              child: player,
            );
          },
        ),
      ),
    );
  }
}
