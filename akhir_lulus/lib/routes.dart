import 'package:flutter/material.dart';
import 'package:akhir_lulus/Screens/Register/RegistrasiScreens.dart';
import 'package:akhir_lulus/Screens/Login/LoginScreens.dart';

final Map<String, WidgetBuilder> routes = {
  // Login registrasi
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),

};