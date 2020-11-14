import 'package:flutter/material.dart';
import 'package:smart_home/screens/auth/login/components/body.dart';

import '../../../size_config.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(body: Body());
  }
}
