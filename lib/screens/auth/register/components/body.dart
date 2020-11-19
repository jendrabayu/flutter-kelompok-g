import 'package:flutter/material.dart';
import 'package:smart_home/screens/auth/register/components/form_register.dart';
import 'package:smart_home/size_config.dart';

import '../../../../constans.dart';

class Body extends StatelessWidget {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: kBgColorPrimary),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 70),
                    Container(
                      width: 115,
                      height: 115,
                      child: Image(
                        fit: BoxFit.cover,
                        image: kLogo,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text('Register \n Smarthome',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600)),
                    RegisterForm(),
                    SizedBox(height: 70),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
