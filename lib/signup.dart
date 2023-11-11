import 'package:flutter/material.dart';
import 'package:streamverve/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final _formkey =GlobalKey<FormState>();
  final _passwordController=TextEditingController();
 final _auth = FirebaseAuth.instance;

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
                                    validator: (value)
                                    {
                                      // if(value==null || value.isEmpty || value.length<3|| !RegExp(r"^[a-zA-Z ]").hasMatch(value!))
                                      // {
                                      //   return "Username should be more than 3 characters";
                                      // }
                                      if(value==null || value.isEmpty ||  !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(value!)){
                                        return "Enter the correct email";
                                      }
                                      email=value;
                                    },


                                    decoration:
                                    InputDecoration(

                                      //prefixIcon: Icon(Icons.person),
                                      labelText: "Email",

                                      //hintText: "Create Username",
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
                                    //obscureText: true,
                                    controller: _passwordController,
                                    validator: (value){
                                      if(value==null || value.isEmpty||value.length<8|| !RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(value!))
                                      {
                                        return "Password must have at least 8 letters, one uppercase,\none lowercase, one number, and one special character.";
                                      }
                                    },

                                    decoration:  InputDecoration(
                                       // prefixIcon: Icon(Icons.key),
                                        labelText:"Password",
                                        hintText: "Create Password",
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
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                     obscureText: true,
                                    validator: (value){
                                      if(value==null || value!=_passwordController.text)
                                      {
                                        return "Password do not match";
                                      }
                                      password=value;
                                    },


                                    decoration:  InputDecoration(
                                       // prefixIcon: Icon(Icons.key),
                                        labelText:"Re-enterPassword",
                                        //hintText: "Re-Enter Password",
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
                                        )
                                        ),
                                        child: Text("Sign up",
                                            style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400
                                            ),
                                            ),
                                    onPressed: () async {
                                      if (_formkey.currentState!.validate()) {
                                        //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
                                        Navigator.push(context,
                                          MaterialPageRoute(builder:
                                              (context) => login()),
                                        );
                                        ///nav
                                        try {
                                          await _auth
                                              .createUserWithEmailAndPassword(
                                              email: email, password: password);
                                          // ignore: use_build_context_synchronously
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: ((
                                                  context) => const login())));
                                          setState(() {
                                            //showSpinner = false;
                                          });
                                          print("successful");
                                        }
                                        catch (e) {
                                          setState(() {
                                            print("$e");
                                            // showSpinner = false;
                                          });
                                        }
                                      }
                                    }
                                  ),
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
