import 'package:flutter/material.dart';
import 'package:smart_home/ui/constants/constant.dart';

class AuthButton extends StatelessWidget {
  final String btnTitle;
  final Function press;

  const AuthButton({Key key, this.btnTitle, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.white,
        onPressed: press,
        child: Text(
          this.btnTitle,
          style: TextStyle(
              color: kBackroundColor,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
