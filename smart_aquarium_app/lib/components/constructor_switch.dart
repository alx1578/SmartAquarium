


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SwitchState extends State<SwitchConstructor>{

    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Switch(value: widget.status,activeColor: Colors.blue, onChanged: (value){
        setState(() {
          widget.status = value;
        });
      });
    }
  }



class SwitchConstructor extends StatefulWidget{
  bool status = false;

  SwitchConstructor(this.status);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SwitchState();
  }


}

