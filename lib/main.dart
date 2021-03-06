import 'package:flutter/material.dart';
import 'package:smart_home/routes.dart';
import 'package:smart_home/theme.dart';

void main() => runApp(SmartHome());

class SmartHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Smart Home',
        theme: theme(),
        initialRoute: '/',
        routes: routes);
  }
}
