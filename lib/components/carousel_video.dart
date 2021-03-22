import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';
// import 'package:video_player/video_player.dart';
// import 'chewie_video.dart';
import 'package:carousel_slider/carousel_slider.dart';

class VideoTerkini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        aspectRatio: 16 / 9,
        enableInfiniteScroll: true,
      ),
      items: [
        Container(
          margin: EdgeInsets.all(10.0),
          // color: Colors.black,
          child: BetterPlayer.network(
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
            betterPlayerConfiguration: BetterPlayerConfiguration(
              autoPlay: false,
              looping: false,
              aspectRatio: 1,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.all(10.0),
            // color: Colors.blue,
            child: BetterPlayer.network(
                'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
                betterPlayerConfiguration: BetterPlayerConfiguration(
                  autoPlay: false,
                  looping: false,
                  aspectRatio: 1,
                  fit: BoxFit.contain,
                ))),
      ],
    );
  }
}
