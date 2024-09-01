// ignore_for_file: use_build_context_synchronously, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/border_screen.dart';

import 'package:flutter_application_1/theme/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 11000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => BorderScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: -80,
            left: -60,
            child: Image.asset(
              "assets/intro_screen/path1.png",
              width: 200,
              height: 200,
            ),
          ),
          Positioned(
            bottom: -90,
            left: 50,
            child: Image.asset(
              "assets/intro_screen/path2.png",
              width: 250,
              height: 250,
            ),
          ),
          Center(
            child: Image.asset(
              "assets/intro_screen/logo-start.png",
              width: 180,
              height: 180,
            ),
          ),
        ],
      ),
    );
  }
}
