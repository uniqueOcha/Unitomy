import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
    AnimationController(vsync: this, duration: const Duration(seconds: 3))
      ..forward()
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyHomePage(),
        ));}});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          children: [
            Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),
             ),
              child: Expanded(
                child: Image.asset(
                  "assets/images/Anatomy.jpeg",
                  height: 500,
                  width: 500,
                ),
              ),
            ),
            const Text("Unitomy", style: TextStyle(color: Colors.black, fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}