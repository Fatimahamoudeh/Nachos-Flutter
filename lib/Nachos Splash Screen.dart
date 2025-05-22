import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class nachossplashscreen extends StatefulWidget {
  const nachossplashscreen({Key? key}) :super(key: key);

  @override
  State<nachossplashscreen> createState() => _nachossplashscreenState();
}

class _nachossplashscreenState extends State<nachossplashscreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 1) , (){
      Navigator.pushReplacementNamed(context, "/login");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/13.jpg",
            height: 600,
            width: 400,
            fit:BoxFit.fill,
          ),
        ],
      )
    ),
    );
  }
}