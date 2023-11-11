import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:streamverve/Correctionusernamepassword.dart';

import 'package:streamverve/Login.dart';
import 'package:streamverve/movie.dart';
import 'package:streamverve/movieView.dart';
import 'package:streamverve/navbar.dart';
import 'package:streamverve/profile.dart';
import 'package:streamverve/realmovie.dart';
import 'package:streamverve/signup.dart';
import 'package:streamverve/video%20making.dart';
import 'package:streamverve/videoplaying.dart';
//import 'package:streamverve/vidoeplaying.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_splash_screen/flutter_splash_screen.dart';
import 'correction.dart';
import 'download.dart';
import 'home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    options: FirebaseOptions(
        apiKey: "AIzaSyDVc1IXddOiGZSK1_QAp4KT2mmtwWKekGQ",
        //it is present in google service.jason file as current key in appkey
        appId: "com.example.streamverve",//in build.gridle as application id
        messagingSenderId: "742326932248",//this is the project number in services.json file
        projectId: "streamverse-63a8c")//in service.json

  );

  // WidgetsFlutterBinding();
  // await Firebase.initializeApp(
  //   //options: FirebaseOptions(
  //   //     apiKey: "AIzaSyDVc1IXddOiGZSK1_QAp4KT2mmtwWKekGQ",
  //   //     appId: appId,
  //   //     //messagingSenderId: messagingSenderId,
  //   //     projectId: projectId)irebaseOptions.currentPlatform,
  // );


  runApp( MyApp());
}
// void main(){
//   runApp(const MyApp());
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // builder: (context, child) => ResponsiveBreakpoints.builder(
        //   child: child!,
        //   breakpoints: [
        //     const Breakpoint(start: 0, end: 450, name: MOBILE),
        //     const Breakpoint(start: 451, end: 800, name: TABLET),
        //     const Breakpoint(start: 801, end: 1920, name: DESKTOP),
        //     const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        //   ],
        // ),
        // initialRoute: "/",
      title: 'StreamVerse',
     theme: ThemeData(
      primaryColor: Colors.black87,
       fontFamily: 'Roboto',
       colorScheme: ColorScheme(background: Colors.black87,
           brightness: Brightness.dark,
           primary:Colors.white70,
           onPrimary: Colors.white70,
           secondary: Colors.white,
           onSecondary:Colors.white ,
           error: Color(0xeca93618),
           onError: Colors.blueAccent,
           onBackground: Colors.black87,
           surface:Colors.white70,//using this we can change the colour of navbar text
           onSurface: Colors.black87,

       ),

        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
       // useMaterial3: true,
       ),
      debugShowCheckedModeBanner: false,
     // home: movieview(),
      ///
      home:AnimatedSplashScreen(

          splash: Text("StreamVerse",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Colors.blueGrey,
            ),),
          duration: 3000,

          nextScreen: login(),

          splashTransition: SplashTransition.fadeTransition,

      backgroundColor: Colors.black87)
      ///
      //   routes: {
      //   '/':(context)=>login(),
      //   },


    );


  }
}

