import 'package:flutter/material.dart';
import 'package:untitled3/OTP%20Screen.dart';
import 'Nachos Film Screen.dart';
import 'Nachos Login.dart';
import 'Nachos Preference.dart';
import 'Nachos Signup Password.dart';
import 'Nachos Signup mail.dart';
import 'Nachos Splash Screen.dart';

void main() {
  runApp(NachosFilmScreen());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
     // home: NachosPreference() ,
      //debugShowCheckedModeBanner: false,

      //routes: {
     //   "/" : (context) => nachossplashscreen(),
     //   "/login" : (context) => nachoslogin(),
     // },
    );
  }
}