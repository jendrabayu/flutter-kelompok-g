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
              height: 190.0,
              width: 190.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
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
          Image.asset(
            'assets/images/substract.png',
            height: 40.0,
            width: 500.0,
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
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
                  'Login >',
                  style: TextStyle(
                      color: Color(0xFFFBC02D),
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
                Navigator.of(context).pushNamed('/register');
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
    ));
  }
}
