import 'package:flutter/material.dart';
import 'package:smart_home/ui/screens/about.dart';
import 'package:smart_home/ui/screens/awal.dart';

void main() => runApp(SmartHome());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AwalPage(),
    );
  }
}
