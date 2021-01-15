import 'package:flutter/material.dart';

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
    return Scaffold(
     backgroundColor: Color(0xffeeeeee),
     appBar: AppBar(
          title: Text('Pengaduan/Saran'),
          backgroundColor: Color(0xffFFCC24),
      ),
     body: SingleChildScrollView(
        child: Center(
         child: Padding(
           padding: const EdgeInsets.only(top: 30.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget> [
               Text(
                 "Pengaduan/Saran",
                  style: TextStyle(
                   fontSize: 20.0,
                   fontWeight: FontWeight.bold,
                  ),
               ),
               Text("Smart_Home"),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 40.0),
                 child: Column(
                   children: <Widget> [
                     SizedBox(height: 17.0),
                     TextField(
                       decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Nama",
                        border: InputBorder.none
                       ),
                     ),
                     SizedBox(height: 9.0),
                     TextField(
                       decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Email",
                        border: InputBorder.none
                       ),
                     ),
                     SizedBox(height: 9.0),
                     TextField(
                       maxLines: 7,
                       decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Pesan",
                        border: InputBorder.none
                       ),
                     ),
                     SizedBox(height: 9.0),
                     MaterialButton(
                       height: 50.0,
                       minWidth: 100,
                       color: Color(0xff333333),
                       onPressed:(){},
                       child: Text("Kirim",style: TextStyle(
                         fontWeight: FontWeight.bold,
                         color: Colors.white,
                       ),)
                     ),
                   ],
                 ),
               ),
             ],
           ),
         ),
       ),
     ),
    );
  }
}
