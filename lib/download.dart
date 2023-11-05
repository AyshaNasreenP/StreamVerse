import 'package:flutter/material.dart';
import 'package:streamverve/home.dart';
import 'package:streamverve/models.dart';
import 'package:streamverve/movie.dart';
import 'package:streamverve/video%20making.dart';
import 'package:streamverve/videoplaying.dart';
import 'package:streamverve/videoplaying2.dart';
class download extends StatefulWidget {
  const download({super.key});

  @override
  State<download> createState() => _downloadState();
}

class _downloadState extends State<download> {
  final Map<String, IconData> iconMap = {
    'download': Icons.download_outlined,
    'downloading':Icons.downloading,
    'downloadcompleted':Icons.check_box_outlined,
    // Add more icon mappings as needed
  };
///code for showing different pages on clicking the listview.builder
  void navigateToPage(int index) {
    if (index == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => videoplaying()));
    } else if (index == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => videoplaying2()));
    }
    else if (index == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => videoplaying()));
    } else if (index == 3) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => videoplaying2()));
    }
    else if (index == 4) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => videoplaying()));
    } else if (index == 5) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => videoplaying2()));
    }

    // Add more conditions as needed for other pages
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        backgroundColor: Color(0xcd231e1e),
        title: Text("Downloads",

          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Colors.white,

          ),),
      ),
        body:SingleChildScrollView(
          child: Container(
            //height: 800,
           color: Colors.black87,
            child: Column(
              children: [
                SizedBox(height: 40,),
                Container(
                  height: 800,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: downloadlist.length,
                     // itemExtent:100,

                      itemBuilder: (BuildContext con,index)
                      {
                        return Container(
                          height: 80,
                          child: Column(
                            children: [
                                Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Container(
                                    height: 75,
                                    // width: double.infinity,
                                     color: Color(0xFF4C4F4F),

                                    child:  Column(
                                      children: [
                                        GestureDetector(
                                          onTap: (){
                                            navigateToPage(index);

                                          },
                                          child: Container(
                                            //color: Colors.cyan,
                                            height: 70,
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
                                                          height: 60,width: 70,
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
                                          ),
                                        ),
                                      ],
                                    )


                                ),
                              ),
                          // SizedBox(height: 5,)
                            ],

                          ),
                        );

                      }
                  ),
                ),
              ],
            )

          ),


            ),
      extendBodyBehindAppBar: true,

    );

  }
}
