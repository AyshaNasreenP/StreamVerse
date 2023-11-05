import 'package:flutter/material.dart';
import 'package:streamverve/movieView.dart';
import 'package:video_player/video_player.dart';
import 'models.dart';
class realmovie extends StatefulWidget {
  const realmovie({super.key});

  @override
  State<realmovie> createState() => _realmovieState();
}

class _realmovieState extends State<realmovie> {

  late VideoPlayerController _controllertrailer;
  late VideoPlayerController _controllertrailer1;
  @override

  void initState() {
    super.initState();
    _controllertrailer = VideoPlayerController.asset('assets/mov.mp4');
    _controllertrailer1 = VideoPlayerController.asset('assets/sample.mp4');
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
  }
    @override


  Widget build(BuildContext context) {
    return  DefaultTabController(length: 2,
        child: Scaffold(
          body:SingleChildScrollView(
            child:  Container(
              height: 900,
              color: Colors.black87,
              child:NestedScrollView(

                  headerSliverBuilder: (context,isScrolled){

                    stretchModes: [StretchMode.zoomBackground];
                    return [
                      SliverAppBar (
                        automaticallyImplyLeading: false,

                        backgroundColor: Colors.black87,
                        collapsedHeight: 550,
                        expandedHeight: 550,




                        flexibleSpace: FlexibleSpaceBar(
                          background: movieview(),
                        ),
                      ),
                    ];
                  },
                  body: Container(
                    //height: double.infinity,
                    color: Colors.black87,
                    child: Column(
                      children: [
                        const TabBar(
                          tabs:
                          [

                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "More like this",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color:  Colors.white70,
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Trailers & more",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ],

                        ),
                        Expanded(
                          child: TabBarView(children: [
                            GridView.builder(

                              physics: NeverScrollableScrollPhysics(),
                                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 150,
                                    crossAxisSpacing: 0,
                                    childAspectRatio: 1.5,
                                    //crossAxisSpacing: 10,
                                    mainAxisSpacing:1,
                                    mainAxisExtent: 130


                                ),

                                itemCount:listmovie.length,
                                itemBuilder: (BuildContext ctx, index) {
                                  return Container(
                                    //color: Colors.black,
                                      height: 500,
                                      width: double.infinity,

                                      child: Column(
                                        children: [

                                          GestureDetector(
                                            onTap:(){
                                          Navigator.push(context,
                                          MaterialPageRoute(builder: (context)=> realmovie()));
                                          },
                                            child: Container(
                                              //color: Colors.cyan,
                                              height: 130,
                                              //alignment: Alignment.topRight,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                //color: Colors.cyan,
                                                image:  DecorationImage(
                                                  image: AssetImage(listmovie[index].image),
                                                  //image: AssetImage(lis[index].image),
                                                  fit: BoxFit.fill,
                                                ),
                                                // color: Colors.amber,

                                                //borderRadius: BorderRadius.circular(5)),
                                                //child: Image.asset("assets/image.png",fit: BoxFit.fill,),

                                              ),
                                            ),
                                          )
                                        ],

                                      )

                                  );




                                }

                            ),
                            Container(
                              // color: Colors.black87,
                              height: 650,
                              child:  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: 220,
                                        //width: double.infinity,
                                        child: _controllertrailer.value.isInitialized?
                                        AspectRatio(
                                          aspectRatio: _controllertrailer.value.aspectRatio,
                                          child: VideoPlayer(_controllertrailer),
                                        )
                                            : CircularProgressIndicator()
                                      //

                                    ),
                                    Text("Trailer:Bheeshma",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            )

                          ],
                          ),
                        )
                      ],
                    ),
                  )








                //],
                //)
              ) ,
            ),
          )


        ));
  }
}
