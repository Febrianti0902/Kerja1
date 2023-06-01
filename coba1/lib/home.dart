import 'package:coba1/menu.dart';
import 'package:coba1/status.dart';
import 'package:coba1/testaja.dart';
import 'package:flutter/material.dart';
import './sigin.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('image/logo.png'), fit: BoxFit.cover),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5),
                  //Virtual
                  Text(
                    "Virtual",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 72),
                  ),
                  SizedBox(height: 0),
                  //Posyandu
                  Text(
                    "Posyandu",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 72),
                  ),
                  SizedBox(height: 25),
                  //Login
                  Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                  ),
                  SizedBox(height: 50),

                  //email textfield
                  SizedBox(height: 5),
                  //NAME
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "         EMAIL",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  //password textfield
                  //PASSWORD
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "         NAME",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  //FgPass
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     SizedBox(height: 0.01),
                  //     Text(
                  //       "Forgot Password?          ",
                  //       style: TextStyle(
                  //         fontWeight: FontWeight.bold,
                  //         fontSize: 20,
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  SizedBox(height: 35),
                  

                  Container(
                  width: 150,
                  height: 55,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(208, 91, 59, 152),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return HomePage();
                        },)
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),
                  // //Login button
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  //   child: Container(
                  //     padding: EdgeInsets.all(20),
                  //     decoration: BoxDecoration(
                  //       color: Colors.deepPurple,
                  //       borderRadius: BorderRadius.circular(12),
                  //     ),
                  //     child: Center(
                  //       child: Text(
                  //         "Login",
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 18,
                  //         ),
                  //       ),
                  //     ),                 
                  //   ),
                  // ),
                  
                  SizedBox(
                    height: 20,
                  ),

                  //Sign in
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not a member?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      TextButton(onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context){
                        return siginpage();
                      },)
                    );
                  }, 
                  child: Text(
                    "Sig in here.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                      // Text(
                      //   "Sign in to continue.",
                      //   style: TextStyle(
                      //       color: Colors.blue, fontWeight: FontWeight.bold),
                      // ),
                    ],
                  )
                ],
              ),
            )),
        // backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}