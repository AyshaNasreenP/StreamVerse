import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flick_video_player/flick_video_player.dart';
class videoplaying extends StatefulWidget {
  const videoplaying({super.key});

  @override
  State<videoplaying> createState() => _videoplayingState();
}

class _videoplayingState extends State<videoplaying> {
  late VideoPlayerController _controller1;
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();

    // const networkUrl = 'https://www.youtube.com/watch?v=Pnmvr1vUFH8';
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.asset("assets/vid3.mp4")
    );

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:
        Column(
          children: [

            // Container(
            //     child: Stack(
            //       children: [
            //         _controller1.value.isInitialized?
            //         AspectRatio(
            //           aspectRatio: _controller1.value.aspectRatio,
            //           child: VideoPlayer(_controller1),
            //         )
            //             : CircularProgressIndicator(),
            //         Padding(
            //           padding: const EdgeInsets.fromLTRB(170, 80, 0, 80),
            //           child: FloatingActionButton(
            //             //foregroundColor: Colors.white70,
            //             backgroundColor: Colors.white70,
            //             onPressed: () {
            //               setState(() {
            //                 if (_controller1.value.isPlaying) {
            //                   _controller1.pause();
            //                 } else {
            //                   _controller1.play();
            //                 }
            //               });
            //             },
            //             child: Icon(
            //               _controller1.value.isPlaying ? Icons.pause_outlined : Icons.play_arrow,
            //               color: Colors.black,
            //             ),
            //           ),
            //         )
            //       ],
            //     )
            //   //
            //
            // ),

            SizedBox(height: 10,),
            FlickVideoPlayer(
              flickManager:flickManager,


            ),

          ],
        )



    );
  }
  @override
  void dispose() {
    super.dispose();
    flickManager.dispose();
    // Dispose of the video controller to release resources.
  }
}
