import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfigPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ConfigPageState();
  }

}

class ConfigPageState extends State<ConfigPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações do ambiente'),
      ),
    );
  }

}