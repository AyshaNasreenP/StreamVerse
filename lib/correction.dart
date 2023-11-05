import 'package:flutter/material.dart';
import 'package:streamverve/models.dart';
import 'package:streamverve/movie.dart';
import 'package:streamverve/videoplaying.dart';
class download1 extends StatefulWidget {
  const download1({super.key});

  @override
  State<download1> createState() => _download1State();
}

class _download1State extends State<download1> {
  final Map<String, IconData> iconMap = {
    'download': Icons.download_outlined,
    'downloading':Icons.downloading,
    'downloadcompleted':Icons.check_box_outlined,
    // Add more icon mappings as needed
  };
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.black87,
        title: Text("Downloads",

          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Colors.white,

          ),),
      ),
      body:SingleChildScrollView(
        child: Container(
            height: 1000,
            color: Colors.black87,
            child: Column(
              children: [
                SizedBox(height: 20,),
                //     Container(
                //         height:30,
                //       child:
                //       Text("Downloads",
                //   style: TextStyle(
                //     fontWeight: FontWeight.w500,
                //     fontSize: 20,
                //     color: Colors.white,
                //   ),
                // )),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: downloadlist.length,

                      itemBuilder: (BuildContext con,index)
                      {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Container(
                              height: 100,
                              // width: double.infinity,
                              // color: Colors.cyan,

                              child:  Column(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => videoplaying()),
                                      );

                                    },
                                    child: Container(
                                      //color: Colors.cyan,
                                      height: 100,
                                      width:double.infinity,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children :[
                                          Row(

                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(

                                                    decoration: BoxDecoration(


                                                      //shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                          image: AssetImage(downloadlist[index].image),
                                                          fit: BoxFit.fill
                                                      ),
                                                      // color: Colors.black
                                                    ),
                                                    height: 70,width: 70,
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [

                                                    Text(downloadlist[index].text,
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white
                                                      ),),


                                                  ],
                                                )
                                              ]
                                          ),


                                          //crossAxisAlignment: CrossAxisAlignment.start,

                                          Icon(
                                            iconMap[downloadlist[index].icon] ?? Icons.error, // Default to an error icon if not found
                                            color: Colors.grey,
                                          )
                                          //Icon(Icons.download_outlined,color: Colors.grey,)
                                        ],
                                      ),
                                      // decoration: BoxDecoration(
                                      //shape: BoxShape.circle,
                                      // image: DecorationImage(
                                      //     image: AssetImage(recentimage[index].image),
                                      //     //fit: BoxFit.fill
                                      // )
                                      // ),
                                    ),
                                  ),
                                  // Text(recentimage[index].text)
                                ],
                              )


                          ),
                        );
                      }
                  ),
                ),
              ],
            )

        ),


      ),

    );

  }
}
