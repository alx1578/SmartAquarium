import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smart_aquarium_app/screens/login.dart';


const _tituloApp = "Smart Aquarium";
const _descricao = "Uma solução para\nseu aquário marinho";

class SmartAquariumSplashScreen extends StatefulWidget {
  @override
  _SmartAquariumSplashScreenState createState() =>
      new _SmartAquariumSplashScreenState();
}

class _SmartAquariumSplashScreenState extends State<SmartAquariumSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
              return LoginPage();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blueGrey),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 60,
                          backgroundImage: AssetImage('images/logo.jpg'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Text(
                          _tituloApp,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      CircularProgressIndicator(
                        valueColor:
                        new AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20.0)),
                      Text(
                        _descricao,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
