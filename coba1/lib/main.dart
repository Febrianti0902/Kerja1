import 'package:coba1/home.dart';
import 'package:coba1/sigin.dart';
import 'package:coba1/testaja.dart';
// import 'package:coba1/menu.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'dart:html';

void main() async {
  // WidgetfFlutterBinding.ensureIntialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: loginpage(),
      // home: siginpage(),
      // home: menupage(),
      // home: TestFirestore(),
    );
  }
}