import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_fonts/google_fonts.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  File? _selectedImage;
  Future _pickImageFromGallary() async{
   final returedImage = await ImagePicker().pickImage(source:ImageSource.gallery);
    if(returedImage==null) return;
   setState(() {
      _selectedImage=File(returedImage.path);
    });
  }

  ///used for circular Avathar. It work in Android but not in windows .Now We are Changing it.
  // File? _image;
  // ImageProvider<Object>? _avatarImage;
  // Future<void> _pickImage() async {
  //   final ImagePicker _picker = ImagePicker();
  //   final XFile? image = await _picker.pickImage(source: ImageSource.gallery); // You can change 'ImageSource.gallery' to 'ImageSource.camera' for taking a new photo.
  //   if (image != null) {
  //     // Handle the selected image, e.g., update the user's profile picture
  //     // You can also use this image with the 'CircleAvatar' widget.
  //     // For example:
  //     setState(() {
  //       _image = File(image.path);
  //       _avatarImage = MemoryImage(
  //           _image!.readAsBytesSync(),
  //       );
  //       print("Image path: ${_image?.path}\n");
  //     }
  //     );
  //   }
  // }
  ///till here
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black87,
        appBar: AppBar(

          backgroundColor: Colors.black,
          title: Text("My StreamVerse",

            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.blueGrey,
            ),),
          actions: [
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            //   child: Icon(Icons.menu_outlined,
            //     color: Colors.blueGrey,
            //     size: 30,
            //   ),
            // )
          ],
        ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  _pickImageFromGallary();
                  //_pickImage();///used when the first code used
                },
                child: CircleAvatar(
                  radius: 60,
                backgroundColor: Colors.blueAccent,
                  backgroundImage:_selectedImage !=null ?
                  FileImage(_selectedImage!) as ImageProvider
                      : AssetImage("assets/aysha.jpeg")
                  //AssetImage("assets/aysha.jpeg"),
                    ///For first method
                  // _avatarImage ?? AssetImage("assets/aysha.jpeg"),
                  ///another method
                  // _image != null
                  //     ? FileImage(_image!) as ImageProvider<Object> // Cast to ImageProvider
                  //     : AssetImage("assets/aysha.jpeg"),
                  // radius: 60, // You can adjust the size of the avatar
                  // backgroundImage: AssetImage('assets/2018.jpeg'),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Text("AYSHA NASREEN",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Container(
              height: 300,
              child: Column(

                children: [
///edit profile button
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
                  //   child: ElevatedButton(
                  //       autofocus: true,
                  //       style: ElevatedButton.styleFrom(
                  //         primary: Colors.white70,
                  //         minimumSize: Size(480, 40),
                  //         //shadowColor: Colors.blueAccent
                  //       ),
                  //       onPressed:(){}, child: Padding(
                  //     padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                  //     child: Text("Edit Profile", style: TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 18,
                  //     ),),
                  //   )),
                  // ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: ElevatedButton(
                        autofocus: true,
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white70,
                          minimumSize: Size(480, 40),
                          //shadowColor: Colors.blueAccent


                        ),

                        onPressed: () {}, child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                             child: Text("Subscription", style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
                    child: ElevatedButton(
                        autofocus: true,
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white70,
                          minimumSize: Size(480, 40),
                          //shadowColor: Colors.blueAccent
                        ),
                        onPressed: () {}, child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                      child: Text("Help & Support", style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),),
                    )),
                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: ElevatedButton(
                        autofocus: true,
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white70,
                          minimumSize: Size(480, 40),
                          //shadowColor: Colors.blueAccent


                        ),

                        onPressed: () {}, child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                      child: Text("Privacy Policy", style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),),
                    )),
                  ),
                  ///logout button Removing
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
                  //   child: ElevatedButton(
                  //       autofocus: true,
                  //       style: ElevatedButton.styleFrom(
                  //         primary: Colors.white70,
                  //         minimumSize: Size(480, 40),
                  //         //shadowColor: Colors.blueAccent
                  //       ),
                  //       onPressed: () {}, child: Padding(
                  //     padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                  //     child: Text("Logout", style: TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 18,
                  //     ),),
                  //   )),
                  // ),

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
