import 'package:coba1/home.dart';
import 'package:flutter/material.dart';
import './menu.dart';

class profilpage extends StatefulWidget {
  @override
  _profilpageState createState() => _profilpageState();
}

class _profilpageState extends State<profilpage> {
  bool isObscurePassword = true;
  
  // get isPasswordTextField => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
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
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130, height: 130, decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2, blurRadius: 10, color: Colors.black.withOpacity(0.1)
                          )
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://static.republika.co.id/uploads/images/inpicture_slide/bayi-ilustrasi-_130422105618-663.jpg'
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
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Colors.white
                          ),
                          color: Colors.blue
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      )
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              buildTextField("Nama", "YourName", false),
              buildTextField("Email", "YourEmail@gmail.com", false),
              buildTextField("Tanggal Lahir", "DD-MM-YY", false),
              buildTextField("Umur", "Tahun", false),
              buildTextField("Gender", "L/P", false),              
              // buildTextField("Password", "*******", true),
              // buildTextField("Location", "New York", false),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    }, 
                    child: Text("CANCEL", style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      color: Colors.black
                    ),),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){}, 
                    child: Text("SAVE", style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      color: Colors.white
                    )),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField) {
  return Padding(
    padding: EdgeInsets.only(bottom: 30),
    child: TextField(
      obscureText: isPasswordTextField ? isObscurePassword : false,
      decoration: InputDecoration(
        suffixIcon: isPasswordTextField ?
          IconButton(
            icon: Icon(Icons.remove_red_eye, color: Colors.grey),
            onPressed: (){
              setState(() {
                isObscurePassword = !isObscurePassword;
              });
            }
          ): null,
        contentPadding: EdgeInsets.only(bottom: 5),
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 25,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeholder,
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.grey
        ),
      ),

    ),
  );
}
}
