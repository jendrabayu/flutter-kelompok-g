import 'package:flutter/material.dart';
import 'package:smart_home/size_config.dart';

import '../../constans.dart';

class DetailPemadamanScreen extends StatelessWidget {
  final Map pemadaman;

  DetailPemadamanScreen(this.pemadaman);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Info Pemadaman'),
        backgroundColor: kBgColorPrimary,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    String hari = pemadaman['hari'];
    String tanggal = pemadaman['tanggal'];
    String waktu = pemadaman['waktu'];
    String wilayah = pemadaman['wilayah'];
    String pekerjaan = pemadaman['pekerjaan'];
    String keterangan = pemadaman['keterangan'];

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
            vertical: getProportionateScreenHeight(50)),
        child: Table(
          border: TableBorder.all(),
          children: [
            TableRow(children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildRowTitleText('Hari/Tanggal'),
                    SizedBox(
                      height: 5,
                    ),
                    _buildRowBodyText('$hari, $tanggal')
                  ],
                ),
              )
            ]),
            TableRow(children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildRowTitleText('Waktu Pemadaman'),
                    SizedBox(
                      height: 5,
                    ),
                    _buildRowBodyText(waktu)
                  ],
                ),
              )
            ]),
            TableRow(children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildRowTitleText('Pekerjaan'),
                    SizedBox(
                      height: 5,
                    ),
                    _buildRowBodyText(pekerjaan)
                  ],
                ),
              )
            ]),
            TableRow(children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildRowTitleText('Wilayah Pemadaman'),
                    SizedBox(
                      height: 5,
                    ),
                    _buildRowBodyText(wilayah)
                  ],
                ),
              )
            ]),
            TableRow(children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildRowTitleText('Keterangan'),
                    SizedBox(
                      height: 5,
                    ),
                    _buildRowBodyText(keterangan.length == 0 ? '-' : keterangan)
                  ],
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildRowTitleText(String title) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 12, letterSpacing: 1, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildRowBodyText(String body) {
    return Text(
      body,
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
    );
  }
}
