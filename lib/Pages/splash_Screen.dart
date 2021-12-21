// ignore: file_names

// ignore: file_names
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_cata/Pages/home.dart';
import 'package:velocity_x/src/flutter/padding.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () async {
      // await Navigator.of(context)
      //     .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              // height: 100,
              child: Column(
                children: [
                  Image.asset(
                    "assests/images/logo.png",
                    width: 250,
                    height: 250,
                  ),
                ],
              ).py64(),
            ),
          ),
          CircularProgressIndicator(
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
