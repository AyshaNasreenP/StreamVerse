import 'package:flutter/material.dart';
import 'package:streamverve/movie.dart';
import 'package:streamverve/profile.dart';

import 'download.dart';
import 'home.dart';

class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int _index = 0 ;

  final pages = [
    //home(),
    home(),
    movie(),
    download(),
   profile(),


  ];

  void tap(index)
  {
    setState(() {
      _index= index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home",

            backgroundColor: Colors.black87,

          ),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection),label: "New",),
          BottomNavigationBarItem(icon: Icon(Icons.file_download),label: "Downloads"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

        ],
        currentIndex: _index,
        onTap: tap,

      ),

    );
  }
}