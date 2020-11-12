import 'package:flutter/material.dart';
import 'package:smart_home/ui/constants/constant.dart';
import 'package:smart_home/ui/widgets/AuthButton.dart';
import 'package:smart_home/ui/widgets/AuthTextField.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: kBackroundColor),
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
                        AuthTextField(
                          txtLabel: 'Email',
                          txtHint: 'your username@gmail.com',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        AuthTextField(
                          obscureTextStatus: true,
                          txtLabel: 'Password',
                          txtHint: 'Enter your password',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Lupa password?',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: screenSize.width * 0.4,
                          height: screenSize.width * 0.12,
                          child: AuthButton(
                            btnTitle: 'Login',
                            press: () {},
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
                                Text(' Buat akun>',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold)),
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
      ),
    );
  }
}
