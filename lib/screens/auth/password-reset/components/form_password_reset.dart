import 'package:flutter/material.dart';
import 'package:smart_home/screens/auth/register/components/input_design.dart';

import '../../../../constans.dart';
import '../../../../size_config.dart';

class PasswordResetForm extends StatefulWidget {
  @override
  _PasswordResetForm createState() => _PasswordResetForm();
}

class _PasswordResetForm extends State<PasswordResetForm> {
  final _formKey = GlobalKey<FormState>();
  String email;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            buildEmailFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Container(
              width: SizeConfig.screenWidth * 0.6,
              height: SizeConfig.screenWidth * 0.12,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.white,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      print("successful");
                      return Navigator.of(context)
                          .pushNamed('/password-reset-success');
                    } else {
                      print("UnSuccessfull");
                    }
                  },
                  child: Text(
                    'Reset Password',
                    style: TextStyle(
                        color: kBgColorPrimary,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ));
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
