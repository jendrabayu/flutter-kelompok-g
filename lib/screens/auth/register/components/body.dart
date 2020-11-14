import 'package:flutter/material.dart';
import 'package:smart_home/components/textfield_auth.dart';
import 'package:smart_home/screens/register_success/register_success_screen.dart';
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
                Text('Daftar Akun \n Smarthome',
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
                        txtLabel: 'Nama',
                        txtHint: 'Dummy Name',
                      ),
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
                      TextFieldAuth(
                        obscureTextStatus: true,
                        txtLabel: 'Konfirmasi Password',
                        txtHint: 'Enter your password',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: SizeConfig.screenWidth * 0.6,
                        height: SizeConfig.screenWidth * 0.12,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FlatButton(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed('/register-success');
                            },
                            child: Text(
                              'Buat Akun >',
                              style: TextStyle(
                                  color: kBgColorPrimary,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
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
