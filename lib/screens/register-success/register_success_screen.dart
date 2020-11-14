import 'package:flutter/material.dart';
import 'package:smart_home/screens/register-success/components/body.dart';
import 'package:smart_home/size_config.dart';

class RegisterSuccessScreen extends StatelessWidget {
  static String routeName = '/register-success';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
