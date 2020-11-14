import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:smart_home/components/AuthTextField.dart';
import 'package:smart_home/constans.dart';
import 'package:smart_home/screens/success/register_success_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
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
                        AuthTextField(
                          txtLabel: 'Nama',
                          txtHint: 'Dummy Name',
                        ),
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
                        AuthTextField(
                          obscureTextStatus: true,
                          txtLabel: 'Konfirmasi Password',
                          txtHint: 'Enter your password',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: screenSize.width * 0.6,
                          height: screenSize.width * 0.12,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FlatButton(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegisterSuccessScreen()),
                                );
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
      ),
    );
  }
}
