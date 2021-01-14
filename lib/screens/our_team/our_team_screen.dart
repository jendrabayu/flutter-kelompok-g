import 'package:flutter/material.dart';
import 'package:smart_home/constans.dart';
import '../../size_config.dart';

class OurTeamScreen extends StatelessWidget {
  static String routeName = '/our_team';

  final List _teams = [
    {
      'name': 'M. Fathony Ramdhan',
      'nim': '182410102019',
      'photo': 'teams/toni.png'
    },
    {
      'name': 'Jendra Bayu Nugraha',
      'nim': '182410102043',
      'photo': 'teams/jendra.png'
    },
    {
      'name': 'Agus Sepriyandiansah',
      'nim': '182410102081',
      'photo': 'teams/agus.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Our Team',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        backgroundColor: kBgColorPrimary,
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: SizeConfig.screenHeight * .35,
            decoration: BoxDecoration(
              color: kBgColorPrimary,
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
                    child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 10),
                  itemBuilder: (context, index) {
                    Map person = _teams[index];
                    return _buildCardTeam(
                        person['name'], person['nim'], person['photo']);
                  },
                  itemCount: _teams.length,
                ))
              ],
            ),
          ))
        ],
      ),
    );
  }

  Card _buildCardTeam(String name, String nim, String photo) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 3,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
            image: DecorationImage(
              alignment: Alignment.bottomLeft,
              image: AssetImage('assets/images/bg1.png'),
            )),
        height: 165,
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.bottomLeft,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(30)),
                child: Image(
                  image: AssetImage('assets/images/$photo'),
                  height: 145,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Nama : ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    name,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('NIM : ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text(nim,
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 15))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
