import 'package:flutter/material.dart';
import 'package:smart_home/screens/auth/login/login_screen.dart';
import 'package:smart_home/screens/auth/password-reset/password_reset_screen.dart';
import 'package:smart_home/screens/auth/register/register_screen.dart';
import 'package:smart_home/screens/camera/camera_screen.dart';
import 'package:smart_home/screens/home/home_screen.dart';
import 'package:smart_home/screens/password-reset-success/password_reset_success_screen.dart';
import 'package:smart_home/screens/register-success/register_success_screen.dart';
import 'package:smart_home/screens/splash/splash_screen.dart';
import 'package:smart_home/screens/welcome/welcome_screen.dart';
import 'package:smart_home/screens/about/about_screen.dart';

/*
  Cara membuat routing dengan flutter
  https://www.codingtive.com/2019/05/tutorial-flutter-cara-routing-dengan-navigator.html
*/

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  AboutScreen.routeName: (context) => AboutScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  RegisterSuccessScreen.routeName: (context) => RegisterSuccessScreen(),
  PasswordResetScreen.routeName: (context) => PasswordResetScreen(),
  PasswordResetSuccess.routeName: (context) => PasswordResetSuccess(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CameraScreen.routeName: (context) => CameraScreen()
};
