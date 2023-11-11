import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:streamverve/signup.dart';

import 'home.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formkey =GlobalKey<FormState>();

 //
   final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: _formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Expanded(
                    child: Container(
                      //alignment: Alignment.center,
                      //margin: const EdgeInsets.all(80.0),
                        height: 500,
                        //width: 500,
                        decoration: BoxDecoration(
                            // color: Color(0x56dad4d4),
                            // border: Border.all(
                            //     color: Colors.black12
                            // )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              //SizedBox(height: 70,),
                              Text("StreamVerse",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blueGrey,),
                              ),
                              SizedBox(height: 50,),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  onChanged: (value) {
                                    email = value;
                                  },
                                  ///validator
                                  // validator: (value)
                                  // {
                                  //   if(value==null || value.isEmpty ||  !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  //       .hasMatch(value!)){
                                  //     return "Enter the correct email";
                                  //   }
                                  //
                                  //
                                  // },
                                  decoration:
                                  InputDecoration(

                                    prefixIcon: Icon(Icons.person),
                                    labelText: "Email",

                                    // hintText: "Enter Username",
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.white70),),

                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                  ),
                                ),
                              ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  obscureText: true,
                                  onChanged: (value) {
                                    password = value;
                                  },
                                  // validator: (value){
                                  //   if(value==null || value.isEmpty||value.length<8|| !RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(value!))
                                  //   {
                                  //     return "Check password";
                                  //
                                  //   }

                                  // },
                                  decoration:  InputDecoration(
                                      prefixIcon: Icon(Icons.key),
                                      labelText:"Password",

                                          focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(color: Colors.white70),),

                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(color: Colors.grey, width: 1.0),



                                      )

                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size.fromHeight(55),
                                    primary: Colors.blueGrey,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0)
                                    ),),
                                  child: const Text("Login",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400
                                    ),),


                                  onPressed: ()
                                  async
                                  ///coment for checking the page working
                                  {
                                    setState(() {
                                      showSpinner = true;
                                    });


                                      ///validate
                                    // if(_formkey.currentState!.validate())
                                    // {
                                    //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
                                    //   Navigator.push(context,
                                    //     MaterialPageRoute(builder:
                                    //         (context) => home()),
                                    //   );
///nav
                                      try {
                                        await _auth.signInWithEmailAndPassword(email: email, password: password);
                                            // .createUserWithEmailAndPassword(
                                            // email: email, password: password);
                                        setState(() {
                                          showSpinner = false;
                                        });
                                        // ignore: use_build_context_synchronously
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: ((
                                                context) => const home())));
                                        setState(() {
                                          //showSpinner = false;
                                        });
                                        print("successful");
                                      }
                                      catch (e) {
                                        setState(() {
                                          print("$e");
                                           showSpinner = false;
                                        });
                                      }

                                    }



                                  //},

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: TextButton(
                                    onPressed: (){
                                      Navigator.push(context,
                                        MaterialPageRoute(builder:
                                            (context) => signup()),
                                      );
                                    },
                                    child: Text(
                                      "Sign Up",

                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                          color: Colors.white70,
                                      fontWeight: FontWeight.w100,

                                      ),
                                    )),
                              ),

                            ],
                          ),
                        )
                    ),
                  ),
                ),

              ],
            ),

          ),
        ],
      )
     
    );
  }
}
