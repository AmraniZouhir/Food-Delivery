import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/Pages/login_page.dart';
import 'package:lottie/lottie.dart';

class splashScreen_page extends StatelessWidget {
  const splashScreen_page({Key? key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: LottieBuilder.asset('assets/lottie/Animation1.json'),
      ),
      nextScreen: LoginPage(),
      splashIconSize: 400,
      backgroundColor: Colors.white,
      duration: 3000,
    );
  }
}
