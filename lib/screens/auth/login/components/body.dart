import 'package:flutter/material.dart';
import 'package:smart_home/components/button_auth.dart';
import 'package:smart_home/components/textfield_auth.dart';
import 'package:smart_home/screens/auth/login/components/input_design.dart';
import 'package:smart_home/size_config.dart';
import '../../../../constans.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String email;
  TextEditingController password = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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
                Text('Login \n Smarthome',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: <Widget>[
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
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: password,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration:
                              buildInputDecoration("Password", 'Masukkan'),
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please a Enter Password';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/password-reset');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Lupa password?',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: SizeConfig.screenWidth * 0.4,
                          height: SizeConfig.screenWidth * 0.12,
                          child: ButtonAuth(
                            btnTitle: 'Login',
                            press: () {
                              if (_formkey.currentState.validate()) {
                                print("successful");
                                return Navigator.of(context)
                                    .pushNamed('/about');
                                ;
                              } else {
                                print("UnSuccessfull");
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Belum Punya aku?',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15)),
                                FlatButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed('/register');
                                  },
                                  child: Text(' Buat akun>',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ],
                        )
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
