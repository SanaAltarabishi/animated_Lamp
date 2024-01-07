import 'package:flutter/material.dart';

class LampHangerRope extends StatelessWidget {
  final double screenHeighy, screenWidth;
  final Color color;

  const LampHangerRope(
      {super.key,
      required this.screenHeighy,
      required this.screenWidth,
      required this.color});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenWidth * 0.2,
      child: Container(
        color: color,
        width: 15,
        height: screenHeighy * 0.15,
      ),
    );
  }
}
