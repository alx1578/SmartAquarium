import 'package:flutter/material.dart';
import 'package:smart_aquarium_app/components/constructor_switch.dart';
import 'package:smart_aquarium_app/components/contructor_widget_temp.dart';
import 'package:smart_aquarium_app/components/contructor_widgets_ph.dart';

double _valor = 0.00;
double _valorPh = 0.00;

class PrincipalPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PrincipalPageState();
  }
}

class PrincipalPageState extends State<PrincipalPage> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text('Smart Aquarium - Tela de Controle'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                    child: ContructorWidgetTemperature(),
                    height: 250,
                    width: 450,),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                    height: 250,
                    width: 450,
                    child: ContructorPhWidget()),
              ),
              SwitchConstructor(
                status
              ),
            ],
          ),
        ],
      ),
    );
  }
}

