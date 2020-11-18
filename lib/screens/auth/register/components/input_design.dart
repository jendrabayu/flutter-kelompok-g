import 'package:flutter/material.dart';

InputDecoration buildInputDecoration(String txtLabel, String txtHint) {
  var textWhite = TextStyle(color: Colors.white);
  var underLineInputWhite =
      UnderlineInputBorder(borderSide: BorderSide(color: Colors.white));
  return InputDecoration(
    labelText: txtLabel,
    labelStyle: textWhite,
    hintText: txtHint,
    hintStyle: textWhite,
    enabledBorder: underLineInputWhite,
    focusedBorder: underLineInputWhite,
    border: underLineInputWhite,
  );
}
