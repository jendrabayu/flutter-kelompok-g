import 'package:flutter/material.dart';
import 'package:smart_home/constans.dart';
import 'package:smart_home/screens/about/components/body.dart';

class AboutScreen extends StatelessWidget {
  static String routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Our Team',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        backgroundColor: kBgColorPrimary,
        elevation: 0,
      ),
      body: Body(),
    );
  }
}
