import 'package:flutter/material.dart';
import 'package:smart_home/screens/password-reset-success/components/body.dart';
import 'package:smart_home/size_config.dart';

class PasswordResetSuccess extends StatelessWidget {
  static String routeName = '/password-reset-success';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
