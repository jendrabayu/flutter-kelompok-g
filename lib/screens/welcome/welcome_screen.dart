import 'package:flutter/material.dart';
import 'package:smart_home/screens/welcome/components/body.dart';
import 'package:smart_home/size_config.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = '/welcome';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
