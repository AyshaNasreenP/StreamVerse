import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:streamverve/videoplaying.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:readmore/readmore.dart';
import 'models.dart';
//import 'package:flutterinst/model.dart';


class movieview extends StatefulWidget {

  @override
  State<movieview> createState() => _movieviewState();
}

class _movieviewState extends State<movieview> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();

    // const networkUrl = 'https://www.youtube.com/watch?v=Pnmvr1vUFH8';
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.asset("assets/sample.mp4")
    );
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          //height: 560,
          color: Colors.black87 ,
          //color: Colors.cyan,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.black87,

                width: double.infinity,
                // margin: EdgeInsets.symmetric(vertical: 16),
                child: FlickVideoPlayer(
                  flickManager:flickManager,
                ),
              ),
              Container(
               // color: Colors.black87,
                child: Container(
                  height: 60,
                 // color: Colors.black87,
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                        child: Text("Bheeshma",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                            ///  backgroundColor: Colors.black87

                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: Text("2023    1h 44m",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //
              //     Padding(
              //       padding: const EdgeInsets.fromLTRB(0, 8, 8, 0),
              //       child: Expanded(
              //         child: ElevatedButton(
              //             autofocus: true,
              //             style: ElevatedButton.styleFrom(
              //               primary: Colors.white70,
              //               minimumSize: Size(165, 40),
              //               //shadowColor: Colors.blueAccent
              //             ),
              //             onPressed: () {}, child: Padding(
              //           padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
              //           child: Text("Play", style: TextStyle(
              //             color: Colors.black,
              //             fontSize: 15,
              //           ),),
              //         )),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
              //       child: Expanded(
              //         child: ElevatedButton(
              //             autofocus: true,
              //             style: ElevatedButton.styleFrom(
              //               primary: Colors.white70,
              //               minimumSize: Size(165, 40),
              //               //shadowColor: Colors.blueAccent
              //
              //
              //             ),
              //
              //             onPressed: () {}, child: Padding(
              //           padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
              //           child: Text("Download", style: TextStyle(
              //               color: Colors.black,
              //             fontSize: 15,
              //           ),),
              //         )),
              //       ),
              //     ),
              //
              //   ],
              // ),
              Container(
                height: 100,
                child: Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
                      child: ElevatedButton(
                          autofocus: true,
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white70,
                            minimumSize: Size(480, 40),
                            //shadowColor: Colors.blueAccent
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => videoplaying()),
                            );
                          }, child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 2, 20, 2),
                              child: Text("Play", style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),),
                      )),
                    ),
                    //SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
                      child: ElevatedButton(
                          autofocus: true,
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white70,
                            minimumSize: Size(480, 40),
                            //shadowColor: Colors.blueAccent


                          ),

                          onPressed: () {

                          }, child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 2, 20, 2),
                        child: Text("Download", style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),),
                      )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("A former gangster-turned-marine exporter from Fort Kochi endures a series of unfortunate events and death threats to his family, forcing him to revisit his past.",
                  style: TextStyle(
                      color: Colors.white70
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Text("Director: 	Amal Neerad ",
                    style: TextStyle(
                        color: Colors.white70,

                        fontSize: 14
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 2),
                child: ReadMoreText("Cast:Mammootty, Soubin Shahir, Sreenath Bhasi, Shine Tom Chacko, Farhaan Faasil, Nadhiya Moidu ",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14
                  ),
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  colorClickableText: Colors.white,
                  trimCollapsedText: 'more',
                  trimExpandedText: 'less',
                ),
              ),
            ],
          ),
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