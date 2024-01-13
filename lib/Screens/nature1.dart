import 'package:flutter/material.dart';

class Nature1 extends StatefulWidget {
  const Nature1({Key? key}) : super(key: key);

  @override
  State<Nature1> createState() => _Nature1State();
}

class _Nature1State extends State<Nature1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/w2.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
