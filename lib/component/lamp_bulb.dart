import 'package:flutter/material.dart';

class LampBulb extends StatelessWidget {
  final Color onColor, offColor;
  final bool isSwitchOn;
  final double screenHeighy, screenWidth;
  final animationDuration=const Duration(milliseconds: 3000);
  const LampBulb(
      {super.key,
      required this.onColor,
      required this.offColor,
      required this.isSwitchOn,
      required this.screenHeighy,
      required this.screenWidth,
      });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenWidth * 0.1,
      top: screenHeighy * 0.35,
      child: AnimatedContainer(
        duration: animationDuration,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: isSwitchOn ? onColor : offColor),
        width: 85,
        height: 85,
      ),
    );
  }
}
