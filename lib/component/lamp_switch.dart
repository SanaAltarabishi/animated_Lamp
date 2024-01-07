import 'package:flutter/material.dart';

class LampSwitch extends StatelessWidget {
  final void Function()? onTap;
  final bool isSwitchOn;
  final double screenHeighy, screenWidth;
  final Duration animationDuration;
  final Color onColor, offColor, color;
  const LampSwitch(
      {super.key,
      this.onTap,
      required this.isSwitchOn,
      required this.screenHeighy,
      required this.screenWidth,
      required this.animationDuration,
      required this.onColor,
      required this.offColor,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: screenHeighy * 0.31,
      width: 38,
      left: screenWidth * 0.5 - 15,
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            AnimatedContainer(
              duration: animationDuration,
              width: 30,
              height: 70,
              decoration: BoxDecoration(
                color: isSwitchOn ? onColor : offColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            //circle inside the switch
            AnimatedPositioned(
              duration: animationDuration,
              left: -8,
              right:
                  0, //the 0 of the container not the screen >> means the center
              top: isSwitchOn ? 42 : 4,

              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
