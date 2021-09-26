import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:news/constants/colors.dart';
import 'package:news/screens/log_in_screen.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: LogInScreen(),
      splash: Image.asset('assets/logo.png'),
      splashIconSize: 200.0,
      backgroundColor: kWhiteColor,
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
