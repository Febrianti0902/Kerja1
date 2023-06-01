import 'package:flutter/material.dart';
import 'package:akhir_lulus/Screens/Login/LoginScreens.dart';
import 'package:akhir_lulus/routes.dart';
import 'package:akhir_lulus/theme.dart';
 
void main () async {
  runApp(
    MaterialApp(
      title: "EEPIS ENERGY",
      theme: theme(),
      initialRoute: LoginScreen.routeName,
      routes: routes,
    )
  );
}


