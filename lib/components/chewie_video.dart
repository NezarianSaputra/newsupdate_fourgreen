// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
// import 'package:chewie/chewie.dart';

// class ChewieVideo extends StatefulWidget {
//   @override
//   _ChewieVideoState createState() => _ChewieVideoState();

//   final VideoPlayerController videoPlayerController1;
//   final bool looping;

//   ChewieVideo({@required this.videoPlayerController1, this.looping, Key key})
//       : super(key: key);
// }

// class _ChewieVideoState extends State<ChewieVideo> {
//   ChewieController _chewieController;

//   void initState() {
//     super.initState();

//     _chewieController = ChewieController(
//       videoPlayerController: widget.videoPlayerController1,
//       aspectRatio: 16 / 9,
//       autoInitialize: true,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Chewie(
//         controller: _chewieController,
//       ),
//     );
//   }

//   void dispose() {
//     super.dispose();

//     widget.videoPlayerController1.dispose();
//     _chewieController.dispose();
//   }
// }
