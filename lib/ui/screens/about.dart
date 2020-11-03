import 'package:flutter/material.dart';
import 'package:smart_home/ui/constants/constant.dart';
import 'package:smart_home/ui/widgets/AboutCard.dart';

class SmartHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home',
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: AboutScreen(),
    );
  }
}

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size =
        MediaQuery.of(context).size; //mendapatkan total lebar dan tinggi screen
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .35,
            decoration: BoxDecoration(
              color: kBackroundColor,
            ),
          ),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
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
                Expanded(
                    child: ListView(
                  padding: EdgeInsets.only(bottom: 10),
                  children: <Widget>[
                    AboutCard(
                      photoSrc: 'assets/images/agus.png',
                      nama: 'Agus Sepriyandiansah',
                      nim: '182410102081',
                    ),
                    AboutCard(
                      photoSrc: 'assets/images/jendra.png',
                      nama: 'Jendra Bayu Nugraha',
                      nim: '182410102043',
                    ),
                    AboutCard(
                      photoSrc: 'assets/images/toni.png',
                      nama: 'M. Fathony Ramdhan',
                      nim: '182410102019',
                    ),
                  ],
                ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
