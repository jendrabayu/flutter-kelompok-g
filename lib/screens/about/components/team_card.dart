import 'package:flutter/material.dart';

class TeamCard extends StatelessWidget {
  final String photoSrc;
  final String nama;
  final String nim;

  TeamCard({Key key, this.photoSrc, this.nama, this.nim}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  image: AssetImage(photoSrc),
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
                    nama,
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
