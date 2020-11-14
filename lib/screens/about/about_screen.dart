import 'package:flutter/material.dart';
import 'package:smart_home/screens/about/components/body.dart';

class AboutScreen extends StatelessWidget {
  static String routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
