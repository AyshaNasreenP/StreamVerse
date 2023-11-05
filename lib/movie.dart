import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flick_video_player/flick_video_player.dart';
class movie extends StatefulWidget {
  const movie({super.key});

  @override
  State<movie> createState() => _movieState();
}

class _movieState extends State<movie> {
  late VideoPlayerController _controllertrailer;
  late VideoPlayerController _controllertrailer1;
  late VideoPlayerController _controllertrailer2;


  @override
  void initState() {
    super.initState();
    _controllertrailer = VideoPlayerController.asset('assets/mov.mp4');
    _controllertrailer1 = VideoPlayerController.asset('assets/sample.mp4');
    _controllertrailer2 = VideoPlayerController.asset('assets/mov.mp4');
    _controllertrailer.initialize().then((_) {
      // Ensure the first frame is shown and then play the video.
      setState(() {});
     _controllertrailer.play();
    });
    _controllertrailer1.initialize().then((_) {
      // Ensure the first frame is shown and then play the video.
      setState(() {});
      _controllertrailer1.play();
    });
    _controllertrailer2.initialize().then((_) {
      // Ensure the first frame is shown and then play the video.
      setState(() {});
      _controllertrailer2.play();
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


      appBar: AppBar(

      backgroundColor: Color(0xcd231e1e),
      title: Text("StreamVerse",

      style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w700,
      color: Colors.blueGrey,
      ),),
      ),
      body:SingleChildScrollView(
        child: Container(
          color: Colors.black87,

          child: Column(
            children: [
              ///two buttons
              // Row(
              //   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   //crossAxisAlignment: CrossAxisAlignment.stretch,
              //   children: [
              //     // Padding(
              //     //   padding: const EdgeInsets.all(8.0),
              //     //   child: ClipRRect(
              //     //     borderRadius: BorderRadius.circular(20),
              //     //     child:ElevatedButton(
              //     //
              //     //         onPressed: (){}, child: Text("New Coming"),
              //     //       style:  ElevatedButton.styleFrom(
              //     //
              //     //         primary: Colors.grey,
              //     //
              //     //     ),
              //     //   ),
              //     //   ),
              //     // ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     ClipRRect(
              //       borderRadius: BorderRadius.circular(20),
              //       child:ElevatedButton(
              //
              //         onPressed: (){}, child: Text("Top 10"),
              //         style:  ElevatedButton.styleFrom(
              //
              //           primary: Colors.grey,
              //
              //         ),
              //       ),
              //     ),
              //
              //   ],
              // ),
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Coming Soon",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
              ),
              SizedBox(height: 10,),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Nov 04",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 170,
                          // width: double.infinity,
                          child: Stack(
                            children: [
                              _controllertrailer.value.isInitialized?
                              AspectRatio(
                                aspectRatio: _controllertrailer.value.aspectRatio,
                                child: VideoPlayer(_controllertrailer),
                              )
                                  : CircularProgressIndicator(),

                            ],
                          )
                        //

                      ),
                      Text("2018",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text("Coming on November 04",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 300,
                        child: Text("2018 is a survival drama film based on the severe 2018 Kerala floods that devastated Kerala.",
                          softWrap: true, // Enable text wrapping
                          //overflow: TextOverflow.ellipsis, // Use ellipsis if text overflows
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text("Thriller",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Suspense",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Drama",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10,),

                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Nov 14",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 170,
                          // width: double.infinity,
                          child: Stack(
                            children: [
                              _controllertrailer1.value.isInitialized?
                              AspectRatio(
                                aspectRatio: _controllertrailer1.value.aspectRatio,
                                child: VideoPlayer(_controllertrailer1),
                              )
                                  : CircularProgressIndicator(),

                            ],
                          )
                        //

                      ),
                      Text("KANNUR SQUAD",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text("Coming on November 14",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 300,
                        child: Text("2018 is a survival drama film based on the severe 2018 Kerala floods that devastated Kerala.",
                          softWrap: true, // Enable text wrapping
                          //overflow: TextOverflow.ellipsis, // Use ellipsis if text overflows
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text("Thriller",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Suspense",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Drama",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10,),

                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Nov 24",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 170,
                          // width: double.infinity,
                          child: Stack(
                            children: [
                              _controllertrailer2.value.isInitialized?
                              AspectRatio(
                                aspectRatio: _controllertrailer2.value.aspectRatio,
                                child: VideoPlayer(_controllertrailer2),
                              )
                                  : CircularProgressIndicator(),

                            ],
                          )
                        //

                      ),
                      Text("VIKRAM",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text("Coming on November 24",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 300,
                        child: Text("2018 is a survival drama film based on the severe 2018 Kerala floods that devastated Kerala.",
                          softWrap: true, // Enable text wrapping
                          //overflow: TextOverflow.ellipsis, // Use ellipsis if text overflows
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text("Thriller",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Suspense",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Drama",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10,),

                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),

              //         Container(
              //               child: Stack(
              //                 children: [
              //       _controllertrailer.value.isInitialized?
              //                 AspectRatio(
              //                      aspectRatio: _controllertrailer.value.aspectRatio,
              //                    child: VideoPlayer(_controllertrailer),
              //     )
              //                      : CircularProgressIndicator(),
              //
              //       ],
              //               )
              //         //
              //
              // ),
            ],
          ),
        ),
      ),
     extendBodyBehindAppBar: true,





    );
  }
  @override
  void dispose() {
    super.dispose();
    _controllertrailer.dispose();
   // Dispose of the video controller to release resources.
  }
}
