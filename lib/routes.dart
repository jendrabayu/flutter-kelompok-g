import 'package:flutter/material.dart';
import 'package:smart_home/screens/auth/login/login_screen.dart';
import 'package:smart_home/screens/auth/register/register_screen.dart';
import 'package:smart_home/screens/register_success/register_success_screen.dart';
import 'package:smart_home/screens/welcome/welcome_screen.dart';
import 'package:smart_home/screens/about/about_screen.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (ctx) => WelcomeScreen(),
  AboutScreen.routeName: (ctx) => AboutScreen(),
  LoginScreen.routeName: (ctx) => LoginScreen(),
  RegisterScreen.routeName: (ctx) => RegisterScreen(),
  RegisterSuccessScreen.routeName: (ctx) => RegisterSuccessScreen()
};
