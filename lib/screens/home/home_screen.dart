import 'package:flutter/material.dart';
import 'package:smart_home/constans.dart';
import 'package:smart_home/size_config.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBgColorPrimary,
        automaticallyImplyLeading: false,
        title: Text(
          'Smart Home',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildButton('Info Pemadaman', () {
                return Navigator.of(context).pushNamed('/pemadaman');
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
              _buildButton('Daftar Teknisi', () {
                return Navigator.of(context).pushNamed('/user');
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
              _buildButton('Pengaduan / Saran', () {
                return Navigator.of(context).pushNamed('/pengaduan');
              }),
              SizedBox(
                height: 10,
              ),
              _buildButton('Keluar', () {
                return Navigator.of(context).pushNamed('/pemadaman');
              }),
            ],
          ),
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
