import 'package:animated_limb/component/lamp.dart';
import 'package:animated_limb/component/lamp_bulb.dart';
import 'package:animated_limb/component/lamp_hanger_rope.dart';
import 'package:animated_limb/component/lamp_switch.dart';
import 'package:animated_limb/component/lamp_switch_rope.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Limb ',
        home: LivingHomePage());
  }
}

final darkGray = const Color(0xFF232323);
final bulbOnColor = const Color(0xFFFFE12C);
final bulbOffColor = const Color(0xFFC1C1C1);
final gradientStartColor = const Color(0xFFDF3B0);
final gradientEndColor = const Color(0xFFFFFFED);
final animationDuration = const Duration(milliseconds: 500);

class LivingHomePage extends StatefulWidget {
  @override
  State<LivingHomePage> createState() => _LivingHomePageState();
}

class _LivingHomePageState extends State<LivingHomePage> {
  var _isSwitchOn = false;




  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeighy = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          LampHangerRope(
            screenHeighy: screenHeighy,
            screenWidth: screenWidth,
            color: darkGray,
          ),
          LampBulb(
            screenHeighy: screenHeighy,
            screenWidth: screenWidth,
            onColor: bulbOnColor,
            offColor: bulbOffColor,
            isSwitchOn: _isSwitchOn,
          ),
          Lamp(
            screenHeighy: screenHeighy,
            screenWidth: screenWidth,
            color: darkGray,
            gradientColor: gradientStartColor,
            animationDuration: animationDuration,
            isSwitchOn: _isSwitchOn,
          ),
              LampSwitch(
             
              isSwitchOn: _isSwitchOn,
              screenHeighy: screenHeighy,
              screenWidth: screenWidth,
              animationDuration: animationDuration,
              onColor: bulbOnColor,
              offColor: bulbOffColor,
              color: darkGray,
              onTap:(){
                setState(() {
                  _isSwitchOn=!_isSwitchOn;
                });
              } ,
              ),
          LampSwitchRope(
            screenHeighy: screenHeighy,
            screenWidth: screenWidth,
            isSwitchOn: _isSwitchOn,
            color: darkGray,
            animationDuration: animationDuration,
          ),
      
        ],
      ),
    );
  }
}
