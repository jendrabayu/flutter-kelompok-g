import 'package:flutter/material.dart';
import 'package:smart_home/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Image.asset(
              'assets/images/SGDS7ICON.png',
              height: 120.0,
              width: 120.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Link Berhasil',
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
                Text('Terkirim ke email',
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
                Text('anda silahkan',
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
                Text('reset password',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
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
                  '< Login',
                  style: TextStyle(
                      color: Color(0xFFFBC02D),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
          ),
        ],
      ),
    ));
  }
}
