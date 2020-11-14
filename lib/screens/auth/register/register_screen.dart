import 'package:flutter/material.dart';
import 'package:smart_home/screens/auth/register/components/body.dart';
import 'package:smart_home/size_config.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = '/register';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
