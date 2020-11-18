import 'package:flutter/material.dart';
import 'package:smart_home/screens/auth/register/components/input_design.dart';
import 'package:smart_home/size_config.dart';

import '../../../../constans.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String email;
  final _formKey = GlobalKey<FormState>();

  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: kBgColorPrimary),
        ),
        SingleChildScrollView(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 80),
                Container(
                  width: 125,
                  height: 125,
                  child: Image(
                    fit: BoxFit.cover,
                    image: kLogo,
                  ),
                ),
                SizedBox(height: 50),
                Text('Daftar Akun \n Smarthome',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: buildInputDecoration(
                              'Nama', 'Masukkan nama lengkap'),
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please a Enter Password';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: buildInputDecoration(
                              'Email', 'Masukkan alamat email'),
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please a Enter';
                            }
                            if (!RegExp(
                                    "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                .hasMatch(value)) {
                              return 'Please a valid Email';
                            }
                            return null;
                          },
                          onSaved: (String value) {
                            email = value;
                          },
                        ),
                        TextFormField(
                          controller: password,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: buildInputDecoration(
                              'Password', 'Masukkan password'),
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please a Enter Password';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          controller: confirmpassword,
                          keyboardType: TextInputType.text,
                          decoration: buildInputDecoration(
                              'Konfirmasi Password',
                              'Masukkan konfirmasi password'),
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please re-enter password';
                            }
                            print(password.text);

                            print(confirmpassword.text);

                            if (password.text != confirmpassword.text) {
                              return "Password does not match";
                            }

                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20,
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
                                      .pushNamed('/register-success');
                                } else {
                                  print("UnSuccessfull");
                                }
                              },
                              child: Text(
                                'Buat Akun >',
                                style: TextStyle(
                                    color: kBgColorPrimary,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
