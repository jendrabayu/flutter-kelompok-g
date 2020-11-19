import 'package:flutter/material.dart';
import 'package:smart_home/components/button_auth.dart';
import 'package:smart_home/constans.dart';
import 'package:smart_home/screens/auth/login/components/input_design.dart';

import '../../../../size_config.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String email;

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              new GestureDetector(
                onTap: () => Navigator.of(context).pushNamed('/password-reset'),
                child: Text(
                  'Lupa password ?',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Container(
            width: SizeConfig.screenWidth * 0.4,
            height: SizeConfig.screenWidth * 0.12,
            child: ButtonAuth(
              btnTitle: 'Login',
              press: () {
                if (_formKey.currentState.validate()) {
                  print("successful");
                  return Navigator.of(context).pushNamed('/about');
                } else {
                  print("UnSuccessfull");
                }
              },
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Text('Belum Punya akun ?',
              style: TextStyle(color: Colors.white, fontSize: 15)),
          new GestureDetector(
            onTap: () => Navigator.of(context).pushNamed('/register'),
            child: Text('Buat akun',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: password,
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: buildInputDecoration("Password", 'Masukkan password'),
      validator: (value) {
        if (value.isEmpty) {
          return kPassNullError;
        } else if (value.length < 5) {
          return kShortPassError;
        }
        return null;
      },
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.text,
      decoration: buildInputDecoration('Email', 'Masukkan alamat email'),
      validator: (String value) {
        if (value.isEmpty) {
          return kEmailNullError;
        }
        if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        }
        return null;
      },
      onSaved: (String value) {
        email = value;
      },
    );
  }
}
