import 'package:flutter/material.dart';
import 'package:smart_home/constans.dart';
import 'package:smart_home/size_config.dart';

class PengaduanScreen extends StatefulWidget {
  static String routeName = '/pengaduan';
  @override
  State<StatefulWidget> createState() {
    return PengaduanScreenState();
  }
}

class PengaduanScreenState extends State<PengaduanScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaduan/Saran'),
        backgroundColor: kBgColorPrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(15),
              vertical: getProportionateScreenHeight(25)),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Pengaduan / Saran \n PLN Kabupaten Jember',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Nama",
                    border: InputBorder.none),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Email",
                    border: InputBorder.none),
              ),
              SizedBox(height: 20),
              TextField(
                maxLines: 7,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Pengaduan / Saran",
                    border: InputBorder.none),
              ),
              SizedBox(height: 50),
              MaterialButton(
                  height: 50.0,
                  minWidth: SizeConfig.screenWidth,
                  color: Color(0xff333333),
                  onPressed: () {},
                  child: Text(
                    "Kirim",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
