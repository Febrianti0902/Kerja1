

import 'package:coba1/home.dart';
import 'package:flutter/material.dart';
import './menu.dart';

class siginpage extends StatefulWidget {
   siginpage({super.key});

  @override
  State<siginpage> createState() => _siginpageState();
}

class _siginpageState extends State<siginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                //Virtual 
                Text("Virtual", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 72,)
                ),
                SizedBox(height: 0),
                //Posyandu 
                Text("Posyandu", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 72),
                ),
                SizedBox(height: 25),
                //Create New
                Text("Create New Account", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                ),
                SizedBox(height: 15),
                //Sign in
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already Registered? ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, 
                  child: Text(
                    "Log in here.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                    // Text("Log in here.", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 50),
      
                //name textfield
                SizedBox(height: 5),
                //NAME
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("         NAME", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ],),      
                SizedBox(height: 10),
                Padding(padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ' ',
                    ),
                  ),),
                ),),
                 SizedBox(height: 20),
                
                //email textfield
                SizedBox(height: 5),
                //Email
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("         EMAIL", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ],),      
                 SizedBox(height: 10),
                Padding(padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ' ',
                    ),
                  ),),
                ),),
                 SizedBox(height: 20),

                //password textfield
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("         PASSWORD", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ],),      
                 SizedBox(height: 10),
                Padding(padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ' ',
                    ),
                  ),),
                ),),
                SizedBox(height: 10),

                //Date textfield
                SizedBox(height: 5),
                //Date
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("         DATE OF BIRTH", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ],),      
                 SizedBox(height: 10),
                Padding(padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ' ',
                    ),
                  ),),
                ),),
                 SizedBox(height: 25),
 
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
                      "Sign Up",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),

                // //Signin button
                // Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                // child: Container(
                //   padding: EdgeInsets.all(20),
                //   decoration: BoxDecoration(
                //     color: Colors.deepPurple,
                //     borderRadius: BorderRadius.circular(12),
                //   ),
                //   child: Center(
                //     child: Text("Sign up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18,),
                //     ),
                //   ),
                // ),),
                SizedBox(height: 10,),
                
              ],
            ),)),
      ),

    );
  }
}
