import 'package:flutter/material.dart';
import 'package:smart_aquarium_app/screens/config_page.dart';
import 'package:smart_aquarium_app/screens/control_page.dart';
import 'package:smart_aquarium_app/screens/login.dart';
import 'package:smart_aquarium_app/screens/principal_page.dart';

void main() {
  runApp(SmartAquariumApp());
}

class SmartAquariumApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
      ThemeData(primaryColor: Colors.blue, accentColor: Colors.blueAccent),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
