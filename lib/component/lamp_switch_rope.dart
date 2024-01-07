import 'package:flutter/material.dart';

class LampSwitchRope extends StatelessWidget {
  final Color color;
  final bool isSwitchOn;
  final double screenHeighy, screenWidth;
  final Duration animationDuration;

  const LampSwitchRope(
      {super.key,
      required this.color,
      required this.isSwitchOn,
      required this.screenHeighy,
      required this.screenWidth,
      required this.animationDuration});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: animationDuration,
      top: screenHeighy * 0.4,
      bottom: screenHeighy * (isSwitchOn ? 0.34 : 0.38),
      width: 2,
      right: screenWidth * 0.5 - 1,
      child: Container(
        color: color,
      ),
    );
  }
}
