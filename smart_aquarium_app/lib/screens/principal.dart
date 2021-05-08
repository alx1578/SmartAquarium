import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrincipalPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PrincipalState();
  }
}

class PrincipalState extends State<PrincipalPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste'),
      ),
      body: ListView(

      ),
    );
  }

}