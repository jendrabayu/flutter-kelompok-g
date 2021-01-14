import 'package:flutter/material.dart';
import 'package:smart_home/size_config.dart';

import '../../constans.dart';

class RegisterSuccessScreen extends StatelessWidget {
  static String routeName = '/register-success';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
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
                      Text(
                          'Selamat! \n Anda berhasil \n membuat akun. \n reset password \n Silahkan Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: getProportionateScreenHeight(30),
                      ),
                      Container(
                        width: SizeConfig.screenWidth * 0.4,
                        height: SizeConfig.screenWidth * 0.12,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FlatButton(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.of(context).pushNamed('/login');
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Color(0xFFFBC02D),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
