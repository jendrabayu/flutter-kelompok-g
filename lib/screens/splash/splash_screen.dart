import 'package:flutter/material.dart';
import 'package:smart_home/constans.dart';
import 'dart:async';

import 'package:smart_home/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _startSplashScreen();
  }

  _startSplashScreen() async {
    return Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return WelcomeScreen();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColorPrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 120,
              image: kLogo,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Smart Home',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2),
            )
          ],
        ),
      ),
    );
  }
}
