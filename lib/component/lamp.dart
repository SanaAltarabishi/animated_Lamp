
import 'package:flutter/material.dart';

class Lamp extends StatelessWidget {
  final Color color, gradientColor;
  final bool isSwitchOn;
  final double screenHeighy, screenWidth;
  final Duration animationDuration;
  const Lamp(
      {super.key,
      required this.color,
      required this.isSwitchOn,
      required this.screenHeighy,
      required this.screenWidth,
      required this.gradientColor, required this.animationDuration});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      //because the lamp hanger thake 0.15 of height so this must start after it
      top: screenHeighy * 0.15,
      left: -screenWidth * 0.85,
      width: screenWidth * 1.9,
      child: ClipPath(
        clipper: TrapezoidClipper(),
        child: Column(
          children: [
            Container(
              height: screenHeighy * 0.25,
              color: color,
            ),
            AnimatedContainer(
              duration: animationDuration,
              height: screenHeighy * 0.75,
              decoration: BoxDecoration(
                gradient: isSwitchOn
                    ? LinearGradient(
                        colors: [gradientColor.withOpacity(0.4), gradientColor.withOpacity(0.01)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    //to make the slash line degree
    path.moveTo(size.width * 0.3, 0);
    //to draw the line from the top to the end
    path.lineTo(0, size.height);
    //to draw the other line from the top left to the end
    path.lineTo(size.width, size.height);
    //to make the top width line
    path.lineTo(size.width * 0.7, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldLipper) {
    return true;
  }
}
