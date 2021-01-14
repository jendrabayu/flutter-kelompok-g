import 'package:flutter/material.dart';
import 'package:smart_home/constans.dart';
import 'package:smart_home/screens/pemadaman/detail_pemadaman_screen.dart';
import 'package:smart_home/size_config.dart';

class PemadamanScreen extends StatefulWidget {
  static final routeName = '/pemadaman';
  @override
  _PemadamanState createState() => _PemadamanState();
}

class _PemadamanState extends State<PemadamanScreen> {
  List pemadamans = listPemadaman;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Pemadaman'),
        backgroundColor: kBgColorPrimary,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15),
          vertical: getProportionateScreenHeight(25)),
      child: Column(
        children: <Widget>[
          _buildHeading(),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return _buildPemadamanItemCard(pemadamans[index]);
              },
              itemCount: pemadamans.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeading() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Info Pemadaman Listrik \n Kabupaten Jember',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildPemadamanItemCard(Map<String, String> pemadaman) {
    String hari = pemadaman['hari'];
    String tanggal = pemadaman['tanggal'];
    String waktu = pemadaman['waktu'];
    return Card(
      margin: EdgeInsets.only(bottom: 10),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
            vertical: getProportionateScreenHeight(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.date_range),
                    SizedBox(
                      width: 5,
                    ),
                    Text('$hari, $tanggal')
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.timer),
                    SizedBox(
                      width: 5,
                    ),
                    Text(waktu)
                  ],
                ),
              ],
            ),
            Container(
              child: Ink(
                decoration: ShapeDecoration(
                    color: kBgColorPrimary, shape: CircleBorder()),
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return DetailPemadamanScreen(pemadaman);
                      }));
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<Map<String, String>> listPemadaman = [
  {
    'hari': 'Kamis',
    'tanggal': '14 Januari 2021',
    'waktu': '08.00 s/d 17.00 WIB',
    'wilayah':
        'UD. KHARISMA TUNGGAL, Jl. Basuki Rahmat, Pr. Taman Gading, BLKI,Pr. Muktisari – Bumi Este, Pr. Pondok Gede, Pr. Indah Pemali, Pr. Alamanda, PT EAST WEST SEED IND, Ds. Wirowongso,Henri Sulaiman Gobel, Jl. MH. Thamrin, Ds. Limbung Sari, PTP Ajung',
    'pekerjaan': 'Penggatian tiang listrik',
    'keterangan': ''
  },
  {
    'hari': 'Sabtu',
    'tanggal': '2 Januari 2021',
    'waktu': '08.00 s/d 12.00 WIB',
    'wilayah':
        'JL. RAYA BONDOWOSO, DS. CANDIJATI, DS. PANDUMAN, DS. SUKOWIRYO, POLSEK JELBUK, PB UD SUMBER JAYA, DN. SODUNG, DN. SODUNG, PB. KARUNIA SEJATI, DS. SUCO PANGEPOK, DS. JELBUK, DS. LECES, DS. SUGER KIDUL, SPBE JELBUK, SMPN 1 JELBUK, SDN 1 SUKO JEMBER, KORAMIL JELBUK',
    'pekerjaan': 'Penjamperan kabel naik, potong pohon',
    'keterangan': ''
  },
  {
    'hari': 'Sabtu',
    'tanggal': '26 Desember 2020',
    'waktu': '09.00 s/d 13.00 WIB',
    'wilayah':
        'PR SUMBER BENDO, PR. DEMANG MULIA, JL. LETJEND SOEPRAPTO Gg CASABLANCA.',
    'pekerjaan': 'Pemeliharaan jaringan dan pemangkasan pohon',
    'keterangan': ''
  },
  {
    'hari': 'Rabu',
    'tanggal': '9 Desember 2020',
    'waktu': '00.00 s/d 04.00 WIB',
    'wilayah':
        'JL. LETJEN SUTOYO, PT. WING SURYA, BPJS KETENAGAKERJAAN SUTOYO, PR GRIYA KENCANA ASRI,PR KEBONSARI 1, PR KEBONSARI 2, PR SUMBER SARI PERMAI 1, SUMBER SARI PERMAI 2, SUMBER SARI PERMAI 3, PR. KEBONSARI RESIDENCE, PR. KEBONSARI VILLAGE, PT INDOMARCO PRISTA PRATAMA, UD SUMBER MAS',
    'pekerjaan': 'Pemeliharaan gardu induk',
    'keterangan': ''
  },
  {
    'hari': 'Kamis',
    'tanggal': '19 November 2020',
    'waktu': '08.00 s/d 17.00 WIB',
    'wilayah':
        'JL. TAWANG MANGU, PDAM TAWANG MANGU, SMKN 2 JEMBER, PR. KARANG SENTRA,JL. SARANGAN ANTIROGO, SMK FARMASI JEMBER',
    'pekerjaan': 'Perbaikan kabel putus dan pemeliharaan SUTM',
    'keterangan': ''
  },
];
