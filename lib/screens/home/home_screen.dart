import 'package:flutter/material.dart';
import 'package:smart_home/constans.dart';
import 'package:smart_home/size_config.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBgColorPrimary,
        automaticallyImplyLeading: false,
        title: Text(
          'Smart Home',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: SizeConfig.screenWidth,
                child: _buildMenuButton(
                    'Our team', Icon(Icons.people_alt_outlined), () {
                  return Navigator.of(context).pushNamed('/our_team');
                }),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: SizeConfig.screenWidth,
                child: _buildMenuButton('Users', Icon(Icons.people_alt), () {
                  return Navigator.of(context).pushNamed('/user');
                }),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: SizeConfig.screenWidth,
                child: _buildMenuButton('Camera', Icon(Icons.camera_alt), () {
                  return Navigator.of(context).pushNamed('/camera');
                }),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: SizeConfig.screenWidth,
                child: _buildMenuButton('Logout', Icon(Icons.logout), () {
                  return Navigator.of(context).pushReplacementNamed('/welcome');
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  RaisedButton _buildMenuButton(String title, Icon icon, Function onPressed) {
    return RaisedButton.icon(
      padding: EdgeInsets.all(10),
      label: Text(title),
      icon: icon,
      onPressed: onPressed,
    );
  }
}
