import 'dart:io';
import 'dart:typed_data';

import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';

import '../../constans.dart';

class PreviewCameraScreen extends StatefulWidget {
  final String imagePath;

  PreviewCameraScreen({this.imagePath});

  @override
  _PreviewCameraScreenState createState() => _PreviewCameraScreenState();
}

class _PreviewCameraScreenState extends State<PreviewCameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBgColorPrimary,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Image.file(
                File(widget.imagePath),
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 60.0,
                color: Colors.black,
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      //https://pub.dev/packages/esys_flutter_share
                      final Uint8List bytes =
                          File(widget.imagePath).readAsBytesSync();
                      ByteData.view(bytes.buffer);
                      await Share.file('Share via', basename(widget.imagePath),
                          bytes.buffer.asUint8List(), 'image/path');
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
