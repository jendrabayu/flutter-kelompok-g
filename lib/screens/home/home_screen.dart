import 'package:flutter/material.dart';
import 'package:smart_home/constans.dart';
import 'package:smart_home/screens/welcome/welcome_screen.dart';
import 'package:smart_home/size_config.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: SizeConfig.screenHeight * .35,
              decoration: BoxDecoration(
                color: kBgColorPrimary,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(
                getProportionateScreenWidth(25),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image(image: kLogo),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'SDGs 7',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Afforfable and Clean Energy',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.normal),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    elevation: 3,
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                      child: Column(
                        children: <Widget>[
                          _buildButton('Info Pemadaman', () {
                            return Navigator.of(context)
                                .pushNamed('/pemadaman');
                          }),
                          SizedBox(
                            height: 10,
                          ),
                          _buildButton('Pengaduan / Saran', () {
                            return Navigator.of(context)
                                .pushNamed('/pengaduan');
                          }),
                          SizedBox(
                            height: 10,
                          ),
                          _buildButton('Daftar Teknisi', () {
                            return Navigator.of(context).pushNamed('/user');
                          }),
                          SizedBox(
                            height: 10,
                          ),
                          _buildButton('Tim Developer', () {
                            return Navigator.of(context).pushNamed('/our_team');
                          }),
                          SizedBox(
                            height: 10,
                          ),
                          _buildButton('Kamera', () {
                            return Navigator.of(context).pushNamed('/camera');
                          }),
                          SizedBox(
                            height: 10,
                          ),
                          _buildButton('Keluar', () {
                            return Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        WelcomeScreen()));
                          }),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Text(
                      'version 1.0.0',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String title, Function onTap) {
    return Container(
      height: 50.0,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFF05A22),
              style: BorderStyle.solid,
              width: 1.0,
            ),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Color(0xFFF05A22),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
