import 'package:flutter/material.dart';
import 'package:smart_home/components/button_auth.dart';
import 'package:smart_home/components/textfield_auth.dart';
import 'package:smart_home/size_config.dart';
import '../../../../constans.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: kBgColorPrimary),
        ),
        SingleChildScrollView(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 80),
                Container(
                  width: 125,
                  height: 125,
                  child: Image(
                    fit: BoxFit.cover,
                    image: kLogo,
                  ),
                ),
                SizedBox(height: 50),
                Text('Login \n Smarthome',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: <Widget>[
                      TextFieldAuth(
                        txtLabel: 'Email',
                        txtHint: 'your username@gmail.com',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFieldAuth(
                        obscureTextStatus: true,
                        txtLabel: 'Password',
                        txtHint: 'Enter your password',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/password-reset');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Lupa password?',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: SizeConfig.screenWidth * 0.4,
                        height: SizeConfig.screenWidth * 0.12,
                        child: ButtonAuth(
                          btnTitle: 'Login',
                          press: () {
                            Navigator.of(context).pushNamed('/about');
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Belum Punya aku?',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15)),
                              FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/register');
                                },
                                child: Text(' Buat akun>',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
