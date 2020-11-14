import 'package:flutter/material.dart';
import 'package:smart_home/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 80.0),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Image.asset(
                'assets/images/SGDS7ICON.png',
                height: 120.0,
                width: 120.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Lupa',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('password',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Kami akan mengirim link reset',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('password ke email anda silahkan',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('masukkan email yang terhubung ',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('dengan akun :',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                  ),
                  Flexible(
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'your username@gmail.com',
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 50),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
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
                    Navigator.of(context).pushNamed('/password-reset-success');
                  },
                  child: Text(
                    'Reset password',
                    style: TextStyle(
                        color: Color(0xFFFBC02D),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 140.0),
            ),
          ],
        ),
      )),
    );
  }
}
