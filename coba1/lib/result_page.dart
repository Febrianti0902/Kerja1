import 'package:coba1/home.dart';
import 'package:flutter/material.dart';
import './menu.dart';

class Resultpage extends StatefulWidget {
  @override
  _ResultpageState createState() => _ResultpageState();
}

class _ResultpageState extends State<Resultpage> {
  bool isObscurePassword = true;
  
  // get isPasswordTextField => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status Gizi'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            )
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [       
                SizedBox(height: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 130, height: 130, decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2, blurRadius: 10, color: Colors.black.withOpacity(0.1)
                          )
                        ],
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://images.squarespace-cdn.com/content/v1/56b90cb101dbae64ff707585/1471742217208-4DDIFIXP2RJRTX8Y9Q6X/image-asset.jpeg'
                          ),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        // decoration: BoxDecoration(
                        //   shape: BoxShape.circle,
                        //   border: Border.all(
                        //     width: 4,
                        //     color: Colors.white
                        //   ),
                        //   color: Colors.blue
                        // ),
                        // child: Icon(
                        //   Icons.edit,
                        //   color: Colors.white,
                        // ),
                      )
                    )
                  ],

                ),
      
                //name textfield
                SizedBox(height: 5),
                //NAME
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Tinggi Badan", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ],),      
                SizedBox(height: 10),
                Padding(padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'cm (Status)',
                    ),
                  ),),
                ),),
                 SizedBox(height: 20),
                
                //email textfield
                SizedBox(height: 5),
                //Email
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Berat Badan", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ],),      
                 SizedBox(height: 10),
                Padding(padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'kg (Status)',
                    ),
                  ),),
                ),),
                 SizedBox(height: 20),

                //password textfield
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Lingkar Kepala", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ],),      
                 SizedBox(height: 10),
                Padding(padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    // obscureText: true,
                    decoration: InputDecoration(                      
                      border: InputBorder.none,
                      hintText: 'cm (Status)',
                    ),
                  ),),
                ),),
                SizedBox(height: 10),

              ],
            ),)),
      ),

    );
  }
}