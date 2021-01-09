import 'package:flutter/material.dart';
import 'package:smart_home/screens/camera/components/body.dart';
import 'package:smart_home/size_config.dart';

import '../../constans.dart';

class CameraScreen extends StatelessWidget {
  static String routeName = '/camera';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Camera',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        backgroundColor: kBgColorPrimary,
        elevation: 0,
      ),
      body: Body(),
    );
  }
}
