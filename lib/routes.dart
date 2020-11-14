import 'package:flutter/material.dart';
import 'package:smart_home/screens/auth/login/login_screen.dart';
import 'package:smart_home/screens/auth/password-reset/password_reset_screen.dart';
import 'package:smart_home/screens/auth/register/register_screen.dart';
import 'package:smart_home/screens/password-reset-success/password_reset_success_screen.dart';
import 'package:smart_home/screens/register-success/register_success_screen.dart';
import 'package:smart_home/screens/welcome/welcome_screen.dart';
import 'package:smart_home/screens/about/about_screen.dart';

/*
  Cara membuat routing dengan flutter
  https://www.codingtive.com/2019/05/tutorial-flutter-cara-routing-dengan-navigator.html
*/

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (ctx) => WelcomeScreen(),
  AboutScreen.routeName: (ctx) => AboutScreen(),
  LoginScreen.routeName: (ctx) => LoginScreen(),
  RegisterScreen.routeName: (ctx) => RegisterScreen(),
  RegisterSuccessScreen.routeName: (ctx) => RegisterSuccessScreen(),
  PasswordResetScreen.routeName: (ctx) => PasswordResetScreen(),
  PasswordResetSuccess.routeName: (ctx) => PasswordResetSuccess()
};
