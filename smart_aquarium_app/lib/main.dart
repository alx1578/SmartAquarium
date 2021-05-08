import 'package:flutter/material.dart';
import 'file:///C:/Users/alx15/Documents/TCC/Aplicativo/smart_aquarium_app/lib/models/temperatureValue.dart';
import 'package:smart_aquarium_app/http/webclient.dart';


import 'package:smart_aquarium_app/screens/control_page.dart';
import 'package:smart_aquarium_app/screens/splash_screen.dart';

void main(){
  runApp(SmartAquariumApp());
  GetTemperature();
}

class SmartAquariumApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
      ThemeData(primaryColor: Colors.blue, accentColor: Colors.blueAccent),
      debugShowCheckedModeBanner: false,
      home: ControlPage(),
    );
  }
}

