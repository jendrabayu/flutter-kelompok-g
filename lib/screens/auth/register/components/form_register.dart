import 'package:flutter/material.dart';
import 'package:smart_home/widgets/button_auth.dart';
import 'package:smart_home/screens/auth/register/components/input_design.dart';
import '../../../../constans.dart';
import '../../../../size_config.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String name;
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            buildNameFormField(),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            buildEmailFormField(),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            buildPasswordFormField(),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            buildConfirmPasswordFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Container(
              width: SizeConfig.screenWidth * 0.6,
              height: SizeConfig.screenWidth * 0.12,
              child: ButtonAuth(
                btnTitle: 'Buat Akun',
                press: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    return Navigator.of(context).pushNamed('/register-success');
                  }
                },
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Text('Sudah Punya akun ?',
                style: TextStyle(color: Colors.white, fontSize: 15)),
            new GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/login'),
              child: Text('Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ));
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.text,
      decoration: buildInputDecoration('Nama', 'Masukkan nama lengkap'),
      validator: (String value) {
        if (value.isEmpty) {
          return kNamelNullError;
        } else {
          return null;
        }
      },
      onSaved: (value) => name = value,
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.text,
      decoration: buildInputDecoration('Email', 'Masukkan alamat email'),
      onSaved: (value) => email = value,
      validator: (String value) {
        if (value.isEmpty) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        } else {
          return null;
        }
      },
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
        } else {
          return null;
        }
      },
      // onSaved: (value) => password = value,
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      controller: confirmpassword,
      style: TextStyle(color: Colors.white),
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: buildInputDecoration(
          'Konfirmasi Password', 'Masukkan konfirmasi password'),
      validator: (String value) {
        if (value.isEmpty) {
          return kPassConfirmNullError;
        } else if (password.text != confirmpassword.text) {
          return kMatchPassError;
        } else {
          return null;
        }
      },
      // onSaved: (value) => confirmPassword = value,
    );
  }
}
