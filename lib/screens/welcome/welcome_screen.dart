import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:smart_home/constans.dart';
import 'package:smart_home/screens/auth/login/login_screen.dart';
import 'package:smart_home/screens/auth/register/register_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static String routeName = '/welcome';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bgawal.PNG'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 150),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Welcome to',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Smarthome!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70),
            ),
            Container(
              width: screenSize.width * 0.4,
              height: screenSize.width * 0.12,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    'Login >',
                    style: TextStyle(
                        color: kBgColorPrimary,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('atau',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0),
            ),
            Padding(
              child: FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 0),
                color: Colors.transparent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
                child: Text(
                  'Buat akun >',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 50),
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Text('Buat akun > ',
              //         style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold)
              //
              //     ),
              //   ],
              // ),
            ),
          ],
        ),
      )),
    );
  }
}