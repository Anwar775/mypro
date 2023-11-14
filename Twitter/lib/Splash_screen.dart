import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:textformfield_onsave/main.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Lottie.asset('images/animation_lnqm9lo1.json'),
        nextScreen: HomePage(),
      splashIconSize: 250,
      duration: 3000,
      animationDuration: Duration(seconds: 2),
      backgroundColor: Colors.black,
    );
  }
}