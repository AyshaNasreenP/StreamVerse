import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flick_video_player/flick_video_player.dart';
class movie1 extends StatefulWidget {
  const movie1({super.key});

  @override
  State<movie1> createState() => _movie1State();
}

class _movie1State extends State<movie1> {
  late VideoPlayerController _controller1;
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();

    // const networkUrl = 'https://www.youtube.com/watch?v=Pnmvr1vUFH8';
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.network("https://youtu.be/r4kL2tqwiOE?si=GOQBs2AMxR5a2rjI")
    );


    // Initialize the video controller with the video file's asset path or network URL.
    // _controller1 = VideoPlayerController.asset('assets/sample.mp4');
    _controller1 = VideoPlayerController.asset('assets/sample.mp4');
    //_netcontroller = VideoPlayerController.network('https://www.youtube.com/watch?v=Pnmvr1vUFH8');
    // Set up listener to rebuild the widget when the video is initialized.
    _controller1.initialize().then((_) {
      // Ensure the first frame is shown and then play the video.
      setState(() {});
      // _controller1.play();
    });

    // flickManagerNetwork.flickVideoManager.videoPlayerController.initialize().then((_) {
    //   setState(() {});
    // });

    // _netcontroller.initialize().then((_) {
    //   // Ensure the first frame is shown and then play the video.
    //   setState(() {});
    //  // _netcontroller.play();
    // });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:
        Container(

          child: Column(
            children: [

              Container(
                  child: Stack(
                    children: [
                      _controller1.value.isInitialized?
                      AspectRatio(
                        aspectRatio: _controller1.value.aspectRatio,
                        child: VideoPlayer(_controller1),
                      )
                          : CircularProgressIndicator(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(170, 80, 0, 80),
                        child: FloatingActionButton(
                          //foregroundColor: Colors.white70,
                          backgroundColor: Colors.white70,
                          onPressed: () {
                            setState(() {
                              if (_controller1.value.isPlaying) {
                                _controller1.pause();
                              } else {
                                _controller1.play();
                              }
                            });
                          },
                          child: Icon(
                            _controller1.value.isPlaying ? Icons.pause_outlined : Icons.play_arrow,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  )
                //

              ),

              SizedBox(height: 10,),
              FlickVideoPlayer(
                flickManager:flickManager,


              ),

            ],
          ),
        )



    );
  }
  @override
  void dispose() {
    super.dispose();
    _controller1.dispose();
    // Dispose of the video controller to release resources.
  }
}
