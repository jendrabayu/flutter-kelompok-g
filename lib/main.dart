import 'package:flutter/material.dart';
import 'package:smart_home/ui/screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Home',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: WelcomeScreen(),
    );
  }
}
