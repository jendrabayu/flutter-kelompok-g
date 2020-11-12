import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String txtLabel;
  final String txtHint;
  final Function onChanged;
  final Function onTap;
  final Function onEditingComplete;
  final Function onSubmitted;
  final bool obscureTextStatus;

  const AuthTextField(
      {Key key,
      this.txtLabel,
      this.txtHint,
      this.onChanged,
      this.onEditingComplete,
      this.onSubmitted,
      this.onTap,
      this.obscureTextStatus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textWhite = TextStyle(color: Colors.white);
    var underLineInputWhite =
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.white));
    return TextField(
      obscureText: this.obscureTextStatus,
      onChanged: this.onChanged,
      onTap: this.onTap,
      onEditingComplete: this.onEditingComplete,
      onSubmitted: this.onSubmitted,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: this.txtLabel,
        labelStyle: textWhite,
        hintText: this.txtHint,
        hintStyle: textWhite,
        enabledBorder: underLineInputWhite,
        focusedBorder: underLineInputWhite,
        border: underLineInputWhite,
      ),
    );
  }
}
