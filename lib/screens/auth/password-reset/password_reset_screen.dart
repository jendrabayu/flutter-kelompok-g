import 'package:flutter/material.dart';
import 'package:smart_home/screens/auth/password-reset/components/body.dart';
import 'package:smart_home/size_config.dart';

class PasswordResetScreen extends StatelessWidget {
  static String routeName = '/password-reset';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
