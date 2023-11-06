import 'package:flutter/material.dart';
import 'dart:math';

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  final List<String> imagePaths = [
    'images/ball1.png',
    'images/ball2.png',
    'images/ball3.png',
    'images/ball4.png',
  ];

  int currentImageIndex = 0;

  void changeImage() {
    final random = Random();
    setState(() {
      currentImageIndex = random.nextInt(imagePaths.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white30,
        body: Center(
      child: GestureDetector(
      onTap: changeImage,
      child: Image.asset(
        imagePaths[currentImageIndex],
        width: 400,
        height: 400,
        fit: BoxFit.cover,
      ),
    ),
    ),

    );

  }


}
