import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper_ui/Screens/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blueGrey,
              Colors.white
            ],begin: Alignment.topLeft,end: Alignment.bottomRight),
          ),
          child: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText("𝓦𝓪𝓵𝓵𝓟𝓪𝓹𝓮𝓻",textStyle: TextStyle(fontSize: 50,color: Colors.black)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
