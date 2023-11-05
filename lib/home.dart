import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamverve/realmovie.dart';
import 'package:streamverve/videoplaying.dart';
import 'package:streamverve/videoplaying2.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'models.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  void navigateToPage(int itemIndex) {
    if (itemIndex == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => videoplaying()));
    } else if (itemIndex == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => videoplaying2()));
    }
    else if (itemIndex == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => videoplaying()));
    } else if (itemIndex == 3) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => videoplaying2()));
    }
    else if (itemIndex == 4) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => videoplaying()));
    } else if (itemIndex == 5) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => videoplaying2()));
    }

    // Add more conditions as needed for other pages
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color(0xe4231e1e),
        title: Text("StreamVerse",

        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: Colors.blueGrey,
        ),),
        actions: [
          ///commented search button
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
          //   child: Icon(Icons.search_outlined,
          //   color: Colors.blueGrey,
          //     size: 25,
          //   ),
          // )
        ],
      ),
      body: Container(
        color: Colors.black87,
        child: SingleChildScrollView(

          child: Column(
            children: [
              SizedBox(height: 48,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child:
               Container(
                  color: Colors.black87,
                 //height:600,
                 child:Column(
                   children: [
                     // SizedBox(
                     //   height: 2,
                     // ),
                     CarouselSlider.builder(



                         options: CarouselOptions(
                           //height: 200,

                          aspectRatio: 20/17,
                           viewportFraction: 1.0,
                           initialPage: 0,
                           enableInfiniteScroll: true,
                           reverse: false,
                           autoPlay: true,
                           autoPlayInterval: Duration(seconds: 60),
                           autoPlayAnimationDuration: Duration(seconds:1),
                           autoPlayCurve: Curves.fastOutSlowIn,
                           //enlargeCenterPage: true,
                           enlargeFactor: 1,
                           // onPageChanged: callbackFunction,
                           scrollDirection: Axis.horizontal,

                         ),


                         itemCount:
                         movie.length,
                         itemBuilder: (BuildContext context,
                             int itemIndex,
                             int pageViewIndex,

                             )
                         {

                           return
                             GestureDetector(
                               onTap: ()
                               {
                                 Navigator.push(context,
                                     MaterialPageRoute(builder: (context) => realmovie()));

                               },
                               child: Container(
                                 decoration: BoxDecoration(
                                   image: DecorationImage(
                                     image:
                                     AssetImage(movie[itemIndex].image),
                                     fit: BoxFit.cover,
                                     //
                                   ),
                                 ),
                               ),
                             );
                         }
                     ),
                     ///comment the continue playing since it make lot work.
                     // Container(
                     //   height: 180,
                     //   child: ListView.builder(
                     //       scrollDirection: Axis.horizontal,
                     //       itemCount: listmovie.length,
                     //       itemExtent:130.0,
                     //       itemBuilder: (BuildContext con,index)
                     //       {
                     //         return Padding(
                     //           padding: const EdgeInsets.fromLTRB(4,0,4,8),
                     //           child: GestureDetector(
                     //             onTap: (){
                     //               Navigator.push(context,
                     //                   MaterialPageRoute(builder: (context) =>videoplaying()));
                     //             },
                     //             child:
                     //             Container(
                     //               child: Column(
                     //                 children: [
                     //                   Container(
                     //                     height: 150,
                     //                     width: 150,
                     //                     decoration: BoxDecoration(
                     //                       borderRadius: BorderRadius.circular(5),
                     //                       image: DecorationImage(
                     //                         image: AssetImage(listmovie[index].image),
                     //                         fit: BoxFit.fitWidth,
                     //                       ),
                     //                       boxShadow: [BoxShadow(
                     //                         color: Colors.grey.withOpacity(0.2),
                     //                         spreadRadius: 2,
                     //                         blurRadius: 1,
                     //                         offset: Offset(0, 3),
                     //                   )
                     //                 ],
                     //               ),
                     //
                     //               
                     //                     ),
                     //                   Container(
                     //
                     //                     height: 20,
                     //                     width: 150,
                     //                     color: Colors.black87,
                     //                     child: Row(
                     //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     //                       children: [
                     //                         Icon(Icons.more_vert_outlined,
                     //                         color: Colors.grey,
                     //                         size: 15,)
                     //                       ],
                     //                     ),
                     //                   )
                     //                     ]
                     //                 )
                     //             ),
                     //           ),
                     //         );
                     //       }
                     //   ),
                     // ),
                     SizedBox(height: 10,),
                     Align(
                       alignment: Alignment.topLeft,
                       child: Text('Continue Watching',

                       style:GoogleFonts.lato(


                           fontWeight: FontWeight.w500,
                           fontSize: 22,
                           color: Colors.white,


                       ),
                      ),
                     ),
                     SizedBox(height: 10,),
                     Container(
                       height: 180,
                       child: ListView.builder(
                           scrollDirection: Axis.horizontal,
                           itemCount: listmovie.length,
                           itemExtent:130.0,
                           itemBuilder: (BuildContext con,index)
                           {
                             return Padding(
                               padding: const EdgeInsets.fromLTRB(4,0,4,8),
                               child: GestureDetector(
                                 onTap: (){
                                   Navigator.push(context,
                                       MaterialPageRoute(builder: (context) => videoplaying()));
                                 },
                                 child: Container(

                                     height: 150,
                                     width: 150,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(5),
                                         image: DecorationImage(
                                           image: AssetImage(listmovie[index].image),
                                           fit: BoxFit.cover,
                                         ),
                                         boxShadow: [BoxShadow(
                                           color: Colors.grey.withOpacity(0.2),
                                           spreadRadius: 2,
                                           blurRadius: 1,
                                           offset: Offset(0, 3),
                                         )
                                         ]
                                     )
                                 ),
                               ),
                             );
                           }
                       ),
                     ),
                     //SizedBox(height: 5,),
                     Align(
                       alignment: Alignment.topLeft,
                       child: Text('Trending now',
                         style: GoogleFonts.lato(
                             fontWeight: FontWeight.w500,
                             fontSize: 22,
                             color: Colors.white
                         )


                       ),
                     ),
                     SizedBox(height: 10,),
                     Container(
                       height: 180,
                       child: ListView.builder(
                           scrollDirection: Axis.horizontal,
                           itemCount: trendmovie.length,
                           itemExtent:130.0,
                           itemBuilder: (BuildContext con,index)
                           {
                             return Padding(
                               padding: const EdgeInsets.fromLTRB(4,0,4,8),
                               child: GestureDetector(
                                 onTap: (){
                                   Navigator.push(context,
                                       MaterialPageRoute(builder: (context) => realmovie()));
                                 },
                                 child: Container(

                                     height: 150,
                                     width: 100,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(1),
                                         image: DecorationImage(
                                           image: AssetImage(trendmovie[index].image),
                                           fit: BoxFit.cover,
                                         ),
                                         boxShadow: [BoxShadow(
                                           color: Colors.grey.withOpacity(0.2),
                                           spreadRadius: 2,
                                           blurRadius: 1,
                                           offset: Offset(0, 3),
                                         )
                                         ]




                                     )
                                 ),
                               ),
                             );
                           }
                       ),
                     ),
                     Align(
                       alignment: Alignment.topLeft,
                       child: Text('Only on StreamVerse',
                         style:GoogleFonts.lato(
                           fontWeight: FontWeight.w500,
                           fontSize: 22,
                           color: Colors.white,
                         )
                         ),
                     ),
                     SizedBox(height: 10,),
                     Container(
                       height: 180,
                       child: ListView.builder(
                           scrollDirection: Axis.horizontal,
                           itemCount: listmovie.length,
                           itemExtent:130.0,
                           itemBuilder: (BuildContext con,index)
                           {
                             return Padding(
                               padding: const EdgeInsets.fromLTRB(4,0,4,8),
                               child: GestureDetector(
                                 onTap: (){
                                   Navigator.push(context,
                                       MaterialPageRoute(builder: (context) => realmovie()));
                                 },
                                 child: Container(

                                     height: 150,
                                     width: 100,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(1),
                                         image: DecorationImage(
                                           image: AssetImage(listmovie[index].image),
                                           fit: BoxFit.cover,
                                         ),
                                         boxShadow: [BoxShadow(
                                           color: Colors.grey.withOpacity(0.2),
                                           spreadRadius: 2,
                                           blurRadius: 1,
                                           offset: Offset(0, 3),
                                         )
                                         ]




                                     )
                                 ),
                               ),
                             );
                           }
                       ),
                     ),
                     SizedBox(height: 0,),
                     Align(
                       alignment: Alignment.topLeft,
                       child: Text('Top 10',

                         style: GoogleFonts.lato(
                           fontWeight: FontWeight.w500,
                           fontSize: 22,
                           color: Colors.white,
                         )),
                     ),
                     SizedBox(height: 10,),
                     Container(
                       height: 180,
                       child: ListView.builder(
                           scrollDirection: Axis.horizontal,
                           itemCount: youmaylikelist.length,
                           itemExtent:130.0,
                           itemBuilder: (BuildContext con,index)
                           {
                             return Padding(
                               padding: const EdgeInsets.fromLTRB(4,0,4,8),
                               child: GestureDetector(
                                 onTap: (){
                                   Navigator.push(context,
                                       MaterialPageRoute(builder: (context) => realmovie()));
                                 },
                                 child: Container(

                                     height: 150,
                                     width: 150,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(5),
                                         image: DecorationImage(
                                           image: AssetImage(youmaylikelist[index].image),
                                           fit: BoxFit.cover,
                                         ),
                                         boxShadow: [BoxShadow(
                                           color: Colors.grey.withOpacity(0.2),
                                           spreadRadius: 2,
                                           blurRadius: 1,
                                           offset: Offset(0, 3),
                                         )
                                         ]
                                     )
                                 ),
                               ),
                             );
                           }
                       ),
                     ),


                   ],
                 )

               ),
             )
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,


    );
  }
}
