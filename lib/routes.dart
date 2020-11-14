import 'package:flutter/material.dart';
import 'package:smart_home/screens/welcome/welcome_screen.dart';
import 'package:smart_home/screens/about/about_screen.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (ctx) => WelcomeScreen(),
  AboutScreen.routeName: (ctx) => AboutScreen()
};
